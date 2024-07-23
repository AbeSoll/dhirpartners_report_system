<div class="modal fade" id="solver<?php echo $row['employee_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <center><h4 class="modal-title" id="myModalLabel">Employee Information</h4></center>
                </div>
             <?php
					$pro=mysqli_query($mysqli,"select * from employees where employee_id='".$row['employee_id']."'");
					$prow=mysqli_fetch_array($pro);
                  
				?>
				<div class="row">
                     <p class="text-center">Employee Id: <?php echo $prow['employee_id'];?></p>
                    <div class="col-md-4">
                    </div>
                   
                     <div class="col-md-4"></div>
                </div>
                <form >
                <div class="modal-body">
	 
                    
                    <div class="row">
                        <div class="col-md-6">
                            <label>Name</label> 
                            <input name="solve_name" type="text" class="form-control" value="<?php echo $prow['solve_name'];?>" readonly>    
                        </div>
                        <div class="col-md-6">
                            <label>Employee ID</label> 
                            <input name="solve_id" type="text" class="form-control" value="<?php echo $prow['solve_id'];?>" readonly>        
                        </div>    
                    </div>
                     
                    <div class="row">
                        <div class="col-md-6">
                            <label>Remarks</label> 
                            <input name="solve_remarks" type="text" class="form-control" value="<?php echo $prow['solve_remarks'];?>" readonly>        
                        </div>
                   
                    </div> 
                 <div class="line"></div>
				</div>
               
				 </form>
            </div>
        </div>
    </div>
