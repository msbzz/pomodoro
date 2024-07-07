import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TipoIntervalo { TRABALHO, DESCANSO }

abstract class _PomodoroStore with Store {
  @observable
  bool iniciado = false;

  @observable
  int minutos = 2;

  @observable
  int segundos = 0;

  @observable
  int tempoTrabalhoMin = 2;

  @observable
  int tempoTrabalhoSeg = 0;

  @observable
  int tempoDescansoMin = 1;

  @observable
  int tempoDescansoSeg = 0;

  @observable
  TipoIntervalo tipoIntervalo = TipoIntervalo.TRABALHO;

  Timer? cronometro;

  @action
  void iniciar() {
    iniciado = true;
    // troca de seconds para milliseconds somente para fins de teste
    cronometro = Timer.periodic(Duration(seconds: 1), (timer) {
      if (minutos == 0 && segundos == 0) {
        _trocarTipoIntervalo();
      } else if (segundos == 0) {
        segundos = 59;
        minutos--;
      } else {
        segundos--;
      }
    });
  }

  @action
  void reiniciar() {
    parar();
    minutos = estaTrabalhando() ? tempoTrabalhoMin : tempoDescansoMin;
    segundos = estaTrabalhando() ? tempoTrabalhoSeg : tempoDescansoSeg;
  }

  @action
  void parar() {
    iniciado = false;
    cronometro?.cancel();
  }

  // Tempo Trabalho
  @action
  void incrementarTempoTrabalhoMin() {
    tempoTrabalhoMin++;
    if (estaTrabalhando()) {
      reiniciar();
    }
  }

  @action
  void incrementarTempoTrabalhoSeg() {
    tempoTrabalhoSeg++;

    if (tempoTrabalhoSeg == 60) {
      incrementarTempoTrabalhoMin();
      tempoTrabalhoSeg = 0;
    }
    if (estaTrabalhando()) {
      reiniciar();
    }
  }

  @action
  void decrementarTempoTrabalhoMin() {
    if (tempoTrabalhoMin > 0) {
      tempoTrabalhoMin--;
      if(tempoTrabalhoMin==0){
        tempoTrabalhoSeg=59;
      }
    }
    if (estaTrabalhando()) {
      reiniciar();
    }
  }

  @action
  void decrementarTempoTrabalhoSeg() {
    if (tempoTrabalhoSeg > 0) {
      tempoTrabalhoSeg--;
    } else if (tempoTrabalhoMin > 0) {
      decrementarTempoTrabalhoMin();
      tempoTrabalhoSeg = 59;
    } else {
      tempoTrabalhoSeg = 0;
    }
    if (estaTrabalhando()) {
      reiniciar();
    }
  }
  // Tempo descanso

  @action
  void incrementarTempoDescansoMin() {
    tempoDescansoMin++;
  }

  @action
  void incrementarTempoDescansoSeg() {
    tempoDescansoSeg++;

    if (tempoDescansoSeg == 60) {
      incrementarTempoDescansoMin();
      tempoDescansoSeg = 0;
    }
    if (estaDescansando()) {
      reiniciar();
    }
  }

  @action
  void decrementarTempoDescansoMin() {
    if (tempoDescansoMin > 0) {
      tempoDescansoMin--;
      if(tempoDescansoMin == 0){
        tempoDescansoSeg = 59;
      }  
    }  
    if (estaDescansando()) {
      reiniciar();
    }
  }

  @action
  void decrementarTempoDescansoSeg() {
    if (tempoDescansoSeg > 0) {
      tempoDescansoSeg--;
    } else if (tempoDescansoMin > 0) {
      decrementarTempoDescansoMin();
      tempoDescansoSeg = 59;
    } else {
      tempoDescansoSeg = 0; // não permite zerar descanso
    }
    if (estaDescansando()) {
      reiniciar();
    }
  }

  bool estaTrabalhando() {
    return tipoIntervalo == TipoIntervalo.TRABALHO;
  }

  bool estaDescansando() {
    return tipoIntervalo == TipoIntervalo.DESCANSO;
  }

  void _trocarTipoIntervalo() {
    if (estaTrabalhando()) {
      tipoIntervalo = TipoIntervalo.DESCANSO;
      minutos = tempoDescansoMin;
      segundos = tempoDescansoSeg;
    } else {
      tipoIntervalo = TipoIntervalo.TRABALHO;
      minutos = tempoTrabalhoMin;
      segundos = tempoTrabalhoSeg;
    }
    //segundos = 0;
  }
}
