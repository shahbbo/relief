import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'requests_state.dart';

class RequestsCubit extends Cubit<RequestsState> {
  RequestsCubit() : super(RequestsInitial());

  static RequestsCubit of(context) => BlocProvider.of<RequestsCubit>(context);



}
