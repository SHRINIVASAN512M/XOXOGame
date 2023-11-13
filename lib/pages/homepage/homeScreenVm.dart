import 'homeScreenModel.dart';

class HomeScreenVM extends HomeScreenModel {
  HomeScreenVM() {
    collectionOfValues =
        (["", "", "", "", "", "", "", "", ""]);
  }
  void tapItem(int indexs) {
    if (cross == 0 && circle == 0) {
      if (collectionOfValues[indexs] == "") {
        if (isCross) {
          collectionOfValues[indexs] = "circle";
          isCross = false;
        } else {
          collectionOfValues[indexs] = "cross";
          isCross = true;
        }
      }
    }
    checkWinner();
  }

  void resetAll() {
    for (var i = 0; i < collectionOfValues.length; i++) {
      collectionOfValues[i] = "";
    }
    cross = 0;
    circle = 0;
    setWinner(winner: "");
    isCross = false;
    count = false;
  }

  checkWinner() async {
    if (cross < 1 || circle < 1) {
      //checks row 1

      if (collectionOfValues[0] == collectionOfValues[1] &&
          collectionOfValues[1] == collectionOfValues[2] &&
          collectionOfValues[0] == collectionOfValues[2] &&
          (collectionOfValues[0] == "cross" ||
              collectionOfValues[0] == "circle")) {
        if (collectionOfValues[0] == "cross") {
          cross++;
        } else if (collectionOfValues[0] == "circle") {
          circle++;
        }
      }
      // checks row 2
      else if (collectionOfValues[3] == collectionOfValues[4] &&
          collectionOfValues[4] == collectionOfValues[5] &&
          collectionOfValues[3] == collectionOfValues[5] &&
          (collectionOfValues[3] == "cross" ||
              collectionOfValues[3] == "circle")) {
        if (collectionOfValues[3] == "cross") {
          cross++;
        } else if (collectionOfValues[3] == "circle") {
          circle++;
        }
      }
      //checks for row 3
      else if (collectionOfValues[6] == collectionOfValues[7] &&
          collectionOfValues[7] == collectionOfValues[8] &&
          collectionOfValues[6] == collectionOfValues[8] &&
          (collectionOfValues[6] == "cross" ||
              collectionOfValues[6] == "circle")) {
        if (collectionOfValues[6] == "cross") {
          cross++;
        } else if (collectionOfValues[6] == "circle") {
          circle++;
        }
      }
      //checks for column 1
      else if (collectionOfValues[0] == collectionOfValues[3] &&
          collectionOfValues[3] == collectionOfValues[6] &&
          collectionOfValues[0] == collectionOfValues[6] &&
          (collectionOfValues[0] == "cross" ||
              collectionOfValues[0] == "circle")) {
        if (collectionOfValues[0] == "cross") {
          cross++;
        } else if (collectionOfValues[0] == "circle") {
          circle++;
        }
      }

      //checks for column 2
      else if (collectionOfValues[1] == collectionOfValues[4] &&
          collectionOfValues[4] == collectionOfValues[7] &&
          collectionOfValues[1] == collectionOfValues[7] &&
          (collectionOfValues[4] == "cross" ||
              collectionOfValues[4] == "circle")) {
        if (collectionOfValues[4] == "cross") {
          cross++;
        } else if (collectionOfValues[1] == "circle") {
          circle++;
        }
      }
      //checks for column 3
      else if (collectionOfValues[2] == collectionOfValues[5] &&
          collectionOfValues[5] == collectionOfValues[8] &&
          collectionOfValues[2] == collectionOfValues[8] &&
          (collectionOfValues[5] == "cross" ||
              collectionOfValues[5] == "circle")) {
        if (collectionOfValues[5] == "cross") {
          cross++;
        } else if (collectionOfValues[2] == "circle") {
          circle++;
        }
      }
      //checks for diagonally left to right
      else if (collectionOfValues[0] == collectionOfValues[4] &&
          collectionOfValues[4] == collectionOfValues[8] &&
          collectionOfValues[0] == collectionOfValues[8] &&
          (collectionOfValues[0] == "cross" ||
              collectionOfValues[0] == "circle")) {
        if (collectionOfValues[0] == "cross") {
          cross++;
        } else if (collectionOfValues[0] == "circle") {
          circle++;
        }
      }
      //checks for diagonally  right to left
      else if (collectionOfValues[2] == collectionOfValues[4] &&
          collectionOfValues[4] == collectionOfValues[6] &&
          collectionOfValues[2] == collectionOfValues[6] &&
          (collectionOfValues[2] == "cross" ||
              collectionOfValues[2] == "circle")) {
        if (collectionOfValues[2] == "cross") {
          cross++;
        } else if (collectionOfValues[2] == "circle") {
          circle++;
        }
      }

      // Draw check
      else if (collectionOfValues[0] != "" &&
          collectionOfValues[1] != "" &&
          collectionOfValues[2] != "" &&
          collectionOfValues[3] != "" &&
          collectionOfValues[4] != "" &&
          collectionOfValues[5] != "" &&
          collectionOfValues[6] != "" &&
          collectionOfValues[7] != "" &&
          collectionOfValues[8] != "") {
        setWinner(winner: "Match is Drawed");
        count = true;
        Future.delayed(const Duration(seconds: 3), () {
          if (count) {
            resetAll();
          }
        });
      }
    } else if (cross == 1 || circle == 1) {
      setWinner(winner: await totalcheck(cross, circle));
    }

    if (cross == 1 || circle == 1) {
      setWinner(winner: await totalcheck(cross, circle));
    }
  }

  String totalcheck(int cross, int circle) {
    var winner = "";
    if (cross == 1) {
      winner = "Cross is the winner";
      count = true;
      Future.delayed(const Duration(seconds: 3), () {
        if (count) {
          resetAll();
        }
      });
    } else if (circle == 1) {
      winner = "Circle is the winner";
      count = true;
      Future.delayed(const Duration(seconds: 3), () {
        if (count) {
          resetAll();
        }
      });
    }
    return winner;
  }
}