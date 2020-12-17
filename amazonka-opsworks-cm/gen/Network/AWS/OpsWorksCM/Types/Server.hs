{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorksCM.Types.Server
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.OpsWorksCM.Types.Server where

import Network.AWS.Lens
import Network.AWS.OpsWorksCM.Types.EngineAttribute
import Network.AWS.OpsWorksCM.Types.MaintenanceStatus
import Network.AWS.OpsWorksCM.Types.ServerStatus
import Network.AWS.Prelude

-- | Describes a configuration management server. 
--
--
--
-- /See:/ 'server' smart constructor.
data Server = Server'{_sEngineVersion ::
                      !(Maybe Text),
                      _sServiceRoleARN :: !(Maybe Text),
                      _sDisableAutomatedBackup :: !(Maybe Bool),
                      _sStatus :: !(Maybe ServerStatus),
                      _sInstanceProfileARN :: !(Maybe Text),
                      _sSecurityGroupIds :: !(Maybe [Text]),
                      _sAssociatePublicIPAddress :: !(Maybe Bool),
                      _sServerName :: !(Maybe Text),
                      _sSubnetIds :: !(Maybe [Text]),
                      _sKeyPair :: !(Maybe Text),
                      _sCreatedAt :: !(Maybe POSIX),
                      _sServerARN :: !(Maybe Text),
                      _sCustomDomain :: !(Maybe Text),
                      _sEngine :: !(Maybe Text),
                      _sMaintenanceStatus :: !(Maybe MaintenanceStatus),
                      _sInstanceType :: !(Maybe Text),
                      _sEngineModel :: !(Maybe Text),
                      _sEngineAttributes :: !(Maybe [EngineAttribute]),
                      _sPreferredMaintenanceWindow :: !(Maybe Text),
                      _sPreferredBackupWindow :: !(Maybe Text),
                      _sStatusReason :: !(Maybe Text),
                      _sEndpoint :: !(Maybe Text),
                      _sCloudFormationStackARN :: !(Maybe Text),
                      _sBackupRetentionCount :: !(Maybe Int)}
                deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Server' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sEngineVersion' - The engine version of the server. For a Chef server, the valid value for EngineVersion is currently @2@ . For a Puppet server, the valid value is @2017@ . 
--
-- * 'sServiceRoleARN' - The service role ARN used to create the server. 
--
-- * 'sDisableAutomatedBackup' - Disables automated backups. The number of stored backups is dependent on the value of PreferredBackupCount. 
--
-- * 'sStatus' - The server's status. This field displays the states of actions in progress, such as creating, running, or backing up the server, as well as the server's health state. 
--
-- * 'sInstanceProfileARN' - The instance profile ARN of the server. 
--
-- * 'sSecurityGroupIds' - The security group IDs for the server, as specified in the CloudFormation stack. These might not be the same security groups that are shown in the EC2 console. 
--
-- * 'sAssociatePublicIPAddress' - Associate a public IP address with a server that you are launching. 
--
-- * 'sServerName' - The name of the server. 
--
-- * 'sSubnetIds' - The subnet IDs specified in a CreateServer request. 
--
-- * 'sKeyPair' - The key pair associated with the server. 
--
-- * 'sCreatedAt' - Time stamp of server creation. Example @2016-07-29T13:38:47.520Z@ 
--
-- * 'sServerARN' - The ARN of the server. 
--
-- * 'sCustomDomain' - An optional public endpoint of a server, such as @https://aws.my-company.com@ . You cannot access the server by using the @Endpoint@ value if the server has a @CustomDomain@ specified.
--
-- * 'sEngine' - The engine type of the server. Valid values in this release include @ChefAutomate@ and @Puppet@ . 
--
-- * 'sMaintenanceStatus' - The status of the most recent server maintenance run. Shows @SUCCESS@ or @FAILED@ . 
--
-- * 'sInstanceType' - The instance type for the server, as specified in the CloudFormation stack. This might not be the same instance type that is shown in the EC2 console. 
--
-- * 'sEngineModel' - The engine model of the server. Valid values in this release include @Monolithic@ for Puppet and @Single@ for Chef. 
--
-- * 'sEngineAttributes' - The response of a createServer() request returns the master credential to access the server in EngineAttributes. These credentials are not stored by AWS OpsWorks CM; they are returned only as part of the result of createServer().  __Attributes returned in a createServer response for Chef__      * @CHEF_AUTOMATE_PIVOTAL_KEY@ : A base64-encoded RSA private key that is generated by AWS OpsWorks for Chef Automate. This private key is required to access the Chef API.     * @CHEF_STARTER_KIT@ : A base64-encoded ZIP file. The ZIP file contains a Chef starter kit, which includes a README, a configuration file, and the required RSA private key. Save this file, unzip it, and then change to the directory where you've unzipped the file contents. From this directory, you can run Knife commands. __Attributes returned in a createServer response for Puppet__      * @PUPPET_STARTER_KIT@ : A base64-encoded ZIP file. The ZIP file contains a Puppet starter kit, including a README and a required private key. Save this file, unzip it, and then change to the directory where you've unzipped the file contents.     * @PUPPET_ADMIN_PASSWORD@ : An administrator password that you can use to sign in to the Puppet Enterprise console after the server is online.
--
-- * 'sPreferredMaintenanceWindow' - The preferred maintenance period specified for the server. 
--
-- * 'sPreferredBackupWindow' - The preferred backup period specified for the server. 
--
-- * 'sStatusReason' - Depending on the server status, this field has either a human-readable message (such as a create or backup error), or an escaped block of JSON (used for health check results). 
--
-- * 'sEndpoint' - A DNS name that can be used to access the engine. Example: @myserver-asdfghjkl.us-east-1.opsworks.io@ . You cannot access the server by using the @Endpoint@ value if the server has a @CustomDomain@ specified. 
--
-- * 'sCloudFormationStackARN' - The ARN of the CloudFormation stack that was used to create the server. 
--
-- * 'sBackupRetentionCount' - The number of automated backups to keep. 
server
    :: Server
server
  = Server'{_sEngineVersion = Nothing,
            _sServiceRoleARN = Nothing,
            _sDisableAutomatedBackup = Nothing,
            _sStatus = Nothing, _sInstanceProfileARN = Nothing,
            _sSecurityGroupIds = Nothing,
            _sAssociatePublicIPAddress = Nothing,
            _sServerName = Nothing, _sSubnetIds = Nothing,
            _sKeyPair = Nothing, _sCreatedAt = Nothing,
            _sServerARN = Nothing, _sCustomDomain = Nothing,
            _sEngine = Nothing, _sMaintenanceStatus = Nothing,
            _sInstanceType = Nothing, _sEngineModel = Nothing,
            _sEngineAttributes = Nothing,
            _sPreferredMaintenanceWindow = Nothing,
            _sPreferredBackupWindow = Nothing,
            _sStatusReason = Nothing, _sEndpoint = Nothing,
            _sCloudFormationStackARN = Nothing,
            _sBackupRetentionCount = Nothing}

-- | The engine version of the server. For a Chef server, the valid value for EngineVersion is currently @2@ . For a Puppet server, the valid value is @2017@ . 
sEngineVersion :: Lens' Server (Maybe Text)
sEngineVersion = lens _sEngineVersion (\ s a -> s{_sEngineVersion = a})

-- | The service role ARN used to create the server. 
sServiceRoleARN :: Lens' Server (Maybe Text)
sServiceRoleARN = lens _sServiceRoleARN (\ s a -> s{_sServiceRoleARN = a})

-- | Disables automated backups. The number of stored backups is dependent on the value of PreferredBackupCount. 
sDisableAutomatedBackup :: Lens' Server (Maybe Bool)
sDisableAutomatedBackup = lens _sDisableAutomatedBackup (\ s a -> s{_sDisableAutomatedBackup = a})

-- | The server's status. This field displays the states of actions in progress, such as creating, running, or backing up the server, as well as the server's health state. 
sStatus :: Lens' Server (Maybe ServerStatus)
sStatus = lens _sStatus (\ s a -> s{_sStatus = a})

-- | The instance profile ARN of the server. 
sInstanceProfileARN :: Lens' Server (Maybe Text)
sInstanceProfileARN = lens _sInstanceProfileARN (\ s a -> s{_sInstanceProfileARN = a})

-- | The security group IDs for the server, as specified in the CloudFormation stack. These might not be the same security groups that are shown in the EC2 console. 
sSecurityGroupIds :: Lens' Server [Text]
sSecurityGroupIds = lens _sSecurityGroupIds (\ s a -> s{_sSecurityGroupIds = a}) . _Default . _Coerce

-- | Associate a public IP address with a server that you are launching. 
sAssociatePublicIPAddress :: Lens' Server (Maybe Bool)
sAssociatePublicIPAddress = lens _sAssociatePublicIPAddress (\ s a -> s{_sAssociatePublicIPAddress = a})

-- | The name of the server. 
sServerName :: Lens' Server (Maybe Text)
sServerName = lens _sServerName (\ s a -> s{_sServerName = a})

-- | The subnet IDs specified in a CreateServer request. 
sSubnetIds :: Lens' Server [Text]
sSubnetIds = lens _sSubnetIds (\ s a -> s{_sSubnetIds = a}) . _Default . _Coerce

-- | The key pair associated with the server. 
sKeyPair :: Lens' Server (Maybe Text)
sKeyPair = lens _sKeyPair (\ s a -> s{_sKeyPair = a})

-- | Time stamp of server creation. Example @2016-07-29T13:38:47.520Z@ 
sCreatedAt :: Lens' Server (Maybe UTCTime)
sCreatedAt = lens _sCreatedAt (\ s a -> s{_sCreatedAt = a}) . mapping _Time

-- | The ARN of the server. 
sServerARN :: Lens' Server (Maybe Text)
sServerARN = lens _sServerARN (\ s a -> s{_sServerARN = a})

-- | An optional public endpoint of a server, such as @https://aws.my-company.com@ . You cannot access the server by using the @Endpoint@ value if the server has a @CustomDomain@ specified.
sCustomDomain :: Lens' Server (Maybe Text)
sCustomDomain = lens _sCustomDomain (\ s a -> s{_sCustomDomain = a})

-- | The engine type of the server. Valid values in this release include @ChefAutomate@ and @Puppet@ . 
sEngine :: Lens' Server (Maybe Text)
sEngine = lens _sEngine (\ s a -> s{_sEngine = a})

-- | The status of the most recent server maintenance run. Shows @SUCCESS@ or @FAILED@ . 
sMaintenanceStatus :: Lens' Server (Maybe MaintenanceStatus)
sMaintenanceStatus = lens _sMaintenanceStatus (\ s a -> s{_sMaintenanceStatus = a})

-- | The instance type for the server, as specified in the CloudFormation stack. This might not be the same instance type that is shown in the EC2 console. 
sInstanceType :: Lens' Server (Maybe Text)
sInstanceType = lens _sInstanceType (\ s a -> s{_sInstanceType = a})

-- | The engine model of the server. Valid values in this release include @Monolithic@ for Puppet and @Single@ for Chef. 
sEngineModel :: Lens' Server (Maybe Text)
sEngineModel = lens _sEngineModel (\ s a -> s{_sEngineModel = a})

-- | The response of a createServer() request returns the master credential to access the server in EngineAttributes. These credentials are not stored by AWS OpsWorks CM; they are returned only as part of the result of createServer().  __Attributes returned in a createServer response for Chef__      * @CHEF_AUTOMATE_PIVOTAL_KEY@ : A base64-encoded RSA private key that is generated by AWS OpsWorks for Chef Automate. This private key is required to access the Chef API.     * @CHEF_STARTER_KIT@ : A base64-encoded ZIP file. The ZIP file contains a Chef starter kit, which includes a README, a configuration file, and the required RSA private key. Save this file, unzip it, and then change to the directory where you've unzipped the file contents. From this directory, you can run Knife commands. __Attributes returned in a createServer response for Puppet__      * @PUPPET_STARTER_KIT@ : A base64-encoded ZIP file. The ZIP file contains a Puppet starter kit, including a README and a required private key. Save this file, unzip it, and then change to the directory where you've unzipped the file contents.     * @PUPPET_ADMIN_PASSWORD@ : An administrator password that you can use to sign in to the Puppet Enterprise console after the server is online.
sEngineAttributes :: Lens' Server [EngineAttribute]
sEngineAttributes = lens _sEngineAttributes (\ s a -> s{_sEngineAttributes = a}) . _Default . _Coerce

-- | The preferred maintenance period specified for the server. 
sPreferredMaintenanceWindow :: Lens' Server (Maybe Text)
sPreferredMaintenanceWindow = lens _sPreferredMaintenanceWindow (\ s a -> s{_sPreferredMaintenanceWindow = a})

-- | The preferred backup period specified for the server. 
sPreferredBackupWindow :: Lens' Server (Maybe Text)
sPreferredBackupWindow = lens _sPreferredBackupWindow (\ s a -> s{_sPreferredBackupWindow = a})

-- | Depending on the server status, this field has either a human-readable message (such as a create or backup error), or an escaped block of JSON (used for health check results). 
sStatusReason :: Lens' Server (Maybe Text)
sStatusReason = lens _sStatusReason (\ s a -> s{_sStatusReason = a})

-- | A DNS name that can be used to access the engine. Example: @myserver-asdfghjkl.us-east-1.opsworks.io@ . You cannot access the server by using the @Endpoint@ value if the server has a @CustomDomain@ specified. 
sEndpoint :: Lens' Server (Maybe Text)
sEndpoint = lens _sEndpoint (\ s a -> s{_sEndpoint = a})

-- | The ARN of the CloudFormation stack that was used to create the server. 
sCloudFormationStackARN :: Lens' Server (Maybe Text)
sCloudFormationStackARN = lens _sCloudFormationStackARN (\ s a -> s{_sCloudFormationStackARN = a})

-- | The number of automated backups to keep. 
sBackupRetentionCount :: Lens' Server (Maybe Int)
sBackupRetentionCount = lens _sBackupRetentionCount (\ s a -> s{_sBackupRetentionCount = a})

instance FromJSON Server where
        parseJSON
          = withObject "Server"
              (\ x ->
                 Server' <$>
                   (x .:? "EngineVersion") <*> (x .:? "ServiceRoleArn")
                     <*> (x .:? "DisableAutomatedBackup")
                     <*> (x .:? "Status")
                     <*> (x .:? "InstanceProfileArn")
                     <*> (x .:? "SecurityGroupIds" .!= mempty)
                     <*> (x .:? "AssociatePublicIpAddress")
                     <*> (x .:? "ServerName")
                     <*> (x .:? "SubnetIds" .!= mempty)
                     <*> (x .:? "KeyPair")
                     <*> (x .:? "CreatedAt")
                     <*> (x .:? "ServerArn")
                     <*> (x .:? "CustomDomain")
                     <*> (x .:? "Engine")
                     <*> (x .:? "MaintenanceStatus")
                     <*> (x .:? "InstanceType")
                     <*> (x .:? "EngineModel")
                     <*> (x .:? "EngineAttributes" .!= mempty)
                     <*> (x .:? "PreferredMaintenanceWindow")
                     <*> (x .:? "PreferredBackupWindow")
                     <*> (x .:? "StatusReason")
                     <*> (x .:? "Endpoint")
                     <*> (x .:? "CloudFormationStackArn")
                     <*> (x .:? "BackupRetentionCount"))

instance Hashable Server where

instance NFData Server where
