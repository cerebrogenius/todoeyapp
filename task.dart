
class Task {

final String name;
bool isDone;

  Task({required this.name, this.isDone = false});

  void toggleDone(){
    if(isDone==null){
      return;
    }
    isDone = !isDone;
  }
 
}