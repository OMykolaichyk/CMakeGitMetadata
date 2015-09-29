#include "gitmetadata.h"
#include <iostream>

int main()
{
  std::cout << "GIT_BRANCH: " << GIT_BRANCH << "\n"
            << "GIT_COMMIT_HASH: " << GIT_COMMIT_HASH << "\n"
            << "GIT_COMMIT_DATE: " << GIT_COMMIT_DATETIME
            << std::endl;
  return 0;
}
