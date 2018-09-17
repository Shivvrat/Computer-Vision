import numpy as np
a = [[2 , 2] ,[2 , 2.0005]]
b = [[6], [6.001]]
solution = np.dot(np.linalg.inv(a),b)
#solution 1
print(solution)
#########################################################
a1 = [[2,2] , [2 , 2.001]]
solution2 = np.dot(np.linalg.inv(a1),b)
print(solution2)
# Solution 2
relative_error_coeff = (np.linalg.norm(np.array(a)- np.array(a1)))/np.linalg.norm(a)
print(relative_error_coeff)
relative_error_solution = (np.linalg.norm(np.array(solution) - np.array(solution2)))/np.linalg.norm(solution)
print(relative_error_solution)
print("Cond A", np.linalg.cond(a))
print("Cond A1",np.linalg.cond(a1))
print("Sensitivity being ",relative_error_solution/relative_error_coeff) 
#Comparing the condition number we can say that they are ill posed problems
#Also a small error in A creates a large error in the soltion, x ( by the errors found in the above code)
