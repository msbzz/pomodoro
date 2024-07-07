import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/compoments/cronometro.dart';
import 'package:pomodoro/compoments/ajuste_tempo.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Cronometro(),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Observer(
                builder: (_) {
                  if (kIsWeb) {
                    // Layout for web
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AjusteTempo(
                          titulo: 'Atividade',
                          valorMin: store.tempoTrabalhoMin,
                          valorSeg: store.tempoTrabalhoSeg,
                          incMin: store.iniciado && store.estaTrabalhando()
                              ? null
                              : store.incrementarTempoTrabalhoMin,
                          decMin: store.iniciado && store.estaTrabalhando()
                              ? null
                              : store.decrementarTempoTrabalhoMin,
                          incSeg: store.iniciado && store.estaTrabalhando()
                              ? null
                              : store.incrementarTempoTrabalhoSeg,
                          decSeg: store.iniciado && store.estaTrabalhando()
                              ? null
                              : store.decrementarTempoTrabalhoSeg,    
                        ),
                        AjusteTempo(
                          titulo: 'Intervalo',
                          valorMin: store.tempoDescansoMin,
                          valorSeg: store.tempoDescansoSeg,
                          incMin: store.iniciado && store.estaDescansando()
                              ? null
                              : store.incrementarTempoDescansoMin,
                          decMin: store.iniciado && store.estaDescansando()
                              ? null
                              : store.decrementarTempoDescansoMin,
                          
                          incSeg: store.iniciado && store.estaDescansando()
                              ? null
                              : store.incrementarTempoDescansoSeg,
                          decSeg: store.iniciado && store.estaDescansando()
                              ? null
                              : store.decrementarTempoDescansoSeg,    
                        ),
                      ],
                    );
                  } else {
                    // Layout for mobile
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AjusteTempo(
                          titulo: 'Atividade',
                          valorMin: store.tempoTrabalhoMin,
                          valorSeg: store.tempoTrabalhoSeg,
                          incMin: store.iniciado && store.estaTrabalhando()
                              ? null
                              : store.incrementarTempoTrabalhoMin,
                          decMin: store.iniciado && store.estaTrabalhando()
                              ? null
                              : store.decrementarTempoTrabalhoMin,
                          incSeg: store.iniciado && store.estaTrabalhando()
                              ? null
                              : store.incrementarTempoTrabalhoSeg,
                          decSeg: store.iniciado && store.estaTrabalhando()
                              ? null
                              : store.decrementarTempoTrabalhoSeg,    
                        ),
                        AjusteTempo(
                          titulo: 'Intervalo',
                          valorMin: store.tempoDescansoMin,
                          valorSeg: store.tempoDescansoSeg,
                          incMin: store.iniciado && store.estaDescansando()
                              ? null
                              : store.incrementarTempoDescansoMin,
                          decMin: store.iniciado && store.estaDescansando()
                              ? null
                              : store.decrementarTempoDescansoMin,
                          incSeg: store.iniciado && store.estaDescansando()
                              ? null
                              : store.incrementarTempoDescansoSeg,
                          decSeg: store.iniciado && store.estaDescansando()
                              ? null
                              : store.decrementarTempoDescansoSeg,    
                              
                        ),
                      ],
                    );
                  }
                },
              )),
        ],
      ),
    );
  }
}
