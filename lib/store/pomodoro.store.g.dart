// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$iniciadoAtom =
      Atom(name: '_PomodoroStore.iniciado', context: context);

  @override
  bool get iniciado {
    _$iniciadoAtom.reportRead();
    return super.iniciado;
  }

  @override
  set iniciado(bool value) {
    _$iniciadoAtom.reportWrite(value, super.iniciado, () {
      super.iniciado = value;
    });
  }

  late final _$minutosAtom =
      Atom(name: '_PomodoroStore.minutos', context: context);

  @override
  int get minutos {
    _$minutosAtom.reportRead();
    return super.minutos;
  }

  @override
  set minutos(int value) {
    _$minutosAtom.reportWrite(value, super.minutos, () {
      super.minutos = value;
    });
  }

  late final _$segundosAtom =
      Atom(name: '_PomodoroStore.segundos', context: context);

  @override
  int get segundos {
    _$segundosAtom.reportRead();
    return super.segundos;
  }

  @override
  set segundos(int value) {
    _$segundosAtom.reportWrite(value, super.segundos, () {
      super.segundos = value;
    });
  }

  late final _$tempoTrabalhoMinAtom =
      Atom(name: '_PomodoroStore.tempoTrabalhoMin', context: context);

  @override
  int get tempoTrabalhoMin {
    _$tempoTrabalhoMinAtom.reportRead();
    return super.tempoTrabalhoMin;
  }

  @override
  set tempoTrabalhoMin(int value) {
    _$tempoTrabalhoMinAtom.reportWrite(value, super.tempoTrabalhoMin, () {
      super.tempoTrabalhoMin = value;
    });
  }

  late final _$tempoTrabalhoSegAtom =
      Atom(name: '_PomodoroStore.tempoTrabalhoSeg', context: context);

  @override
  int get tempoTrabalhoSeg {
    _$tempoTrabalhoSegAtom.reportRead();
    return super.tempoTrabalhoSeg;
  }

  @override
  set tempoTrabalhoSeg(int value) {
    _$tempoTrabalhoSegAtom.reportWrite(value, super.tempoTrabalhoSeg, () {
      super.tempoTrabalhoSeg = value;
    });
  }

  late final _$tempoDescansoMinAtom =
      Atom(name: '_PomodoroStore.tempoDescansoMin', context: context);

  @override
  int get tempoDescansoMin {
    _$tempoDescansoMinAtom.reportRead();
    return super.tempoDescansoMin;
  }

  @override
  set tempoDescansoMin(int value) {
    _$tempoDescansoMinAtom.reportWrite(value, super.tempoDescansoMin, () {
      super.tempoDescansoMin = value;
    });
  }

  late final _$tempoDescansoSegAtom =
      Atom(name: '_PomodoroStore.tempoDescansoSeg', context: context);

  @override
  int get tempoDescansoSeg {
    _$tempoDescansoSegAtom.reportRead();
    return super.tempoDescansoSeg;
  }

  @override
  set tempoDescansoSeg(int value) {
    _$tempoDescansoSegAtom.reportWrite(value, super.tempoDescansoSeg, () {
      super.tempoDescansoSeg = value;
    });
  }

  late final _$tipoIntervaloAtom =
      Atom(name: '_PomodoroStore.tipoIntervalo', context: context);

  @override
  TipoIntervalo get tipoIntervalo {
    _$tipoIntervaloAtom.reportRead();
    return super.tipoIntervalo;
  }

  @override
  set tipoIntervalo(TipoIntervalo value) {
    _$tipoIntervaloAtom.reportWrite(value, super.tipoIntervalo, () {
      super.tipoIntervalo = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void iniciar() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.iniciar');
    try {
      return super.iniciar();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reiniciar() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.reiniciar');
    try {
      return super.reiniciar();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void parar() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.parar');
    try {
      return super.parar();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementarTempoTrabalhoMin() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementarTempoTrabalhoMin');
    try {
      return super.incrementarTempoTrabalhoMin();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementarTempoTrabalhoSeg() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementarTempoTrabalhoSeg');
    try {
      return super.incrementarTempoTrabalhoSeg();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementarTempoTrabalhoMin() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementarTempoTrabalhoMin');
    try {
      return super.decrementarTempoTrabalhoMin();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementarTempoTrabalhoSeg() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementarTempoTrabalhoSeg');
    try {
      return super.decrementarTempoTrabalhoSeg();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementarTempoDescansoMin() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementarTempoDescansoMin');
    try {
      return super.incrementarTempoDescansoMin();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementarTempoDescansoSeg() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementarTempoDescansoSeg');
    try {
      return super.incrementarTempoDescansoSeg();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementarTempoDescansoMin() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementarTempoDescansoMin');
    try {
      return super.decrementarTempoDescansoMin();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementarTempoDescansoSeg() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementarTempoDescansoSeg');
    try {
      return super.decrementarTempoDescansoSeg();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
iniciado: ${iniciado},
minutos: ${minutos},
segundos: ${segundos},
tempoTrabalhoMin: ${tempoTrabalhoMin},
tempoTrabalhoSeg: ${tempoTrabalhoSeg},
tempoDescansoMin: ${tempoDescansoMin},
tempoDescansoSeg: ${tempoDescansoSeg},
tipoIntervalo: ${tipoIntervalo}
    ''';
  }
}
