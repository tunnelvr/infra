{
   users.users.matthew = {
     isNormalUser = true;
     openssh.authorizedKeys.keys = [
       "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIDgsWq+G/tcr6eUQYT7+sJeBtRmOMabgFiIgIV44XNc6AAAABHNzaDo="
       "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIOJDRQfb1+7VK5tOe8W40iryfBWYRO6Uf1r2viDjmsJtAAAABHNzaDo="
       "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIJMi3TAuwDtIeO4MsORlBZ31HzaV5bji1fFBPcC9/tWuAAAABHNzaDo="
     ];
     extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
   };

   users.users.julian = {
     isNormalUser = true;
     openssh.authorizedKeys.keys = [ "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDpZ79ynanD7d4obCEmH76fecTCvuJzhbThItG+P1Ve4SovkYe2rRz9Z7NGV2Mwy9zuagPuJUT6473Hi3sy/fRqkVIqtp6oM0PEHhxT0ILqXXze8XBLuUodaxlau1gSC//pPiPPtlD5Kw1AbswhlHr5tDoj5Lep5wS78MTBsQmR1oDyOQHXw4Zksvs09xPk8lrQ3fhlk5phtH0sLajrhZ2gmw/O4IauUI9n6fJa+572FLkt1X7QZ0itr2s620cHS7aC/stQXvp1d9nY6u+taV2fWGGtiMfE+s5sDtB2t/faFUu+mk+JY6+ftLr4QwFp2/j7IN448rj7d5dHN2aitVemzdqm340XTpsOwx515j8aNzAPs50+Fm8P0HvC2YbcYoZsUlQBitw4uFDJGxiLFneSkjpOnN9Gh4aTkCuIqFNm5ZtG7siyRpv/5z8eBViqG23pBbstnZLBcGXHoj7aemFcwQCUwJ48Q/162dlBUR9HFRqoemYaoeRrk1oxKYcvSY8= julian@nixos" ];
     extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
   };
}
