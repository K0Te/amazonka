{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.RestoreFromClusterSnapshot
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new cluster from a snapshot. By default, Amazon Redshift creates the resulting cluster with the same configuration as the original cluster from which the snapshot was created, except that the new cluster is created with the default cluster security and parameter groups. After Amazon Redshift creates the cluster, you can use the 'ModifyCluster' API to associate a different security group and different parameter group with the restored cluster. If you are using a DS node type, you can also choose to change to another DS node type of the same size during restore.
--
--
-- If you restore a cluster into a VPC, you must provide a cluster subnet group where you want the cluster restored.
--
-- For more information about working with snapshots, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html Amazon Redshift Snapshots> in the /Amazon Redshift Cluster Management Guide/ .
--
module Network.AWS.Redshift.RestoreFromClusterSnapshot
    (
    -- * Creating a Request
      restoreFromClusterSnapshot
    , RestoreFromClusterSnapshot
    -- * Request Lenses
    , rfcsManualSnapshotRetentionPeriod
    , rfcsEnhancedVPCRouting
    , rfcsAdditionalInfo
    , rfcsSnapshotScheduleIdentifier
    , rfcsPubliclyAccessible
    , rfcsSnapshotClusterIdentifier
    , rfcsMaintenanceTrackName
    , rfcsHSMConfigurationIdentifier
    , rfcsClusterSecurityGroups
    , rfcsAutomatedSnapshotRetentionPeriod
    , rfcsClusterSubnetGroupName
    , rfcsHSMClientCertificateIdentifier
    , rfcsNumberOfNodes
    , rfcsElasticIP
    , rfcsPreferredMaintenanceWindow
    , rfcsKMSKeyId
    , rfcsAvailabilityZone
    , rfcsVPCSecurityGroupIds
    , rfcsIAMRoles
    , rfcsAvailabilityZoneRelocation
    , rfcsOwnerAccount
    , rfcsNodeType
    , rfcsAllowVersionUpgrade
    , rfcsClusterParameterGroupName
    , rfcsPort
    , rfcsClusterIdentifier
    , rfcsSnapshotIdentifier

    -- * Destructuring the Response
    , restoreFromClusterSnapshotResponse
    , RestoreFromClusterSnapshotResponse
    -- * Response Lenses
    , rfcsrsCluster
    , rfcsrsResponseStatus
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | 
--
--
--
-- /See:/ 'restoreFromClusterSnapshot' smart constructor.
data RestoreFromClusterSnapshot = RestoreFromClusterSnapshot'{_rfcsManualSnapshotRetentionPeriod
                                                              :: !(Maybe Int),
                                                              _rfcsEnhancedVPCRouting
                                                              :: !(Maybe Bool),
                                                              _rfcsAdditionalInfo
                                                              :: !(Maybe Text),
                                                              _rfcsSnapshotScheduleIdentifier
                                                              :: !(Maybe Text),
                                                              _rfcsPubliclyAccessible
                                                              :: !(Maybe Bool),
                                                              _rfcsSnapshotClusterIdentifier
                                                              :: !(Maybe Text),
                                                              _rfcsMaintenanceTrackName
                                                              :: !(Maybe Text),
                                                              _rfcsHSMConfigurationIdentifier
                                                              :: !(Maybe Text),
                                                              _rfcsClusterSecurityGroups
                                                              ::
                                                              !(Maybe [Text]),
                                                              _rfcsAutomatedSnapshotRetentionPeriod
                                                              :: !(Maybe Int),
                                                              _rfcsClusterSubnetGroupName
                                                              :: !(Maybe Text),
                                                              _rfcsHSMClientCertificateIdentifier
                                                              :: !(Maybe Text),
                                                              _rfcsNumberOfNodes
                                                              :: !(Maybe Int),
                                                              _rfcsElasticIP ::
                                                              !(Maybe Text),
                                                              _rfcsPreferredMaintenanceWindow
                                                              :: !(Maybe Text),
                                                              _rfcsKMSKeyId ::
                                                              !(Maybe Text),
                                                              _rfcsAvailabilityZone
                                                              :: !(Maybe Text),
                                                              _rfcsVPCSecurityGroupIds
                                                              ::
                                                              !(Maybe [Text]),
                                                              _rfcsIAMRoles ::
                                                              !(Maybe [Text]),
                                                              _rfcsAvailabilityZoneRelocation
                                                              :: !(Maybe Bool),
                                                              _rfcsOwnerAccount
                                                              :: !(Maybe Text),
                                                              _rfcsNodeType ::
                                                              !(Maybe Text),
                                                              _rfcsAllowVersionUpgrade
                                                              :: !(Maybe Bool),
                                                              _rfcsClusterParameterGroupName
                                                              :: !(Maybe Text),
                                                              _rfcsPort ::
                                                              !(Maybe Int),
                                                              _rfcsClusterIdentifier
                                                              :: !Text,
                                                              _rfcsSnapshotIdentifier
                                                              :: !Text}
                                    deriving (Eq, Read, Show, Data, Typeable,
                                              Generic)

-- | Creates a value of 'RestoreFromClusterSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfcsManualSnapshotRetentionPeriod' - The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots. The value must be either -1 or an integer between 1 and 3,653.
--
-- * 'rfcsEnhancedVPCRouting' - An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html Enhanced VPC Routing> in the Amazon Redshift Cluster Management Guide. If this option is @true@ , enhanced VPC routing is enabled.  Default: false
--
-- * 'rfcsAdditionalInfo' - Reserved.
--
-- * 'rfcsSnapshotScheduleIdentifier' - A unique identifier for the snapshot schedule.
--
-- * 'rfcsPubliclyAccessible' - If @true@ , the cluster can be accessed from a public network. 
--
-- * 'rfcsSnapshotClusterIdentifier' - The name of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.
--
-- * 'rfcsMaintenanceTrackName' - The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the @MaintenanceTrack@ value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks.
--
-- * 'rfcsHSMConfigurationIdentifier' - Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.
--
-- * 'rfcsClusterSecurityGroups' - A list of security groups to be associated with this cluster. Default: The default cluster security group for Amazon Redshift. Cluster security groups only apply to clusters outside of VPCs.
--
-- * 'rfcsAutomatedSnapshotRetentionPeriod' - The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with 'CreateClusterSnapshot' .  Default: The value selected for the cluster from which the snapshot was taken. Constraints: Must be a value from 0 to 35.
--
-- * 'rfcsClusterSubnetGroupName' - The name of the subnet group where you want to cluster restored. A snapshot of cluster in VPC can be restored only in VPC. Therefore, you must provide subnet group name where you want the cluster restored.
--
-- * 'rfcsHSMClientCertificateIdentifier' - Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.
--
-- * 'rfcsNumberOfNodes' - The number of nodes specified when provisioning the restored cluster.
--
-- * 'rfcsElasticIP' - The elastic IP (EIP) address for the cluster.
--
-- * 'rfcsPreferredMaintenanceWindow' - The weekly time range (in UTC) during which automated cluster maintenance can occur. Format: @ddd:hh24:mi-ddd:hh24:mi@  Default: The value selected for the cluster from which the snapshot was taken. For more information about the time blocks for each region, see <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows Maintenance Windows> in Amazon Redshift Cluster Management Guide.  Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun Constraints: Minimum 30-minute window.
--
-- * 'rfcsKMSKeyId' - The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster that you restore from a shared snapshot.
--
-- * 'rfcsAvailabilityZone' - The Amazon EC2 Availability Zone in which to restore the cluster. Default: A random, system-chosen Availability Zone. Example: @us-east-2a@ 
--
-- * 'rfcsVPCSecurityGroupIds' - A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster. Default: The default VPC security group is associated with the cluster. VPC security groups only apply to clusters in VPCs.
--
-- * 'rfcsIAMRoles' - A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request. A cluster can have up to 10 IAM roles associated at any time.
--
-- * 'rfcsAvailabilityZoneRelocation' - The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster is restored.
--
-- * 'rfcsOwnerAccount' - The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.
--
-- * 'rfcsNodeType' - The node type that the restored cluster will be provisioned with. Default: The node type of the cluster from which the snapshot was taken. You can modify this if you are using any DS node type. In that case, you can choose to restore into another DS node type of the same size. For example, you can restore ds1.8xlarge into ds2.8xlarge, or ds1.xlarge into ds2.xlarge. If you have a DC instance type, you must restore into that same instance type and size. In other words, you can only restore a dc1.large instance type into another dc1.large instance type or dc2.large instance type. You can't restore dc1.8xlarge to dc2.8xlarge. First restore to a dc1.8xlarge cluster, then resize to a dc2.8large cluster. For more information about node types, see <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes About Clusters and Nodes> in the /Amazon Redshift Cluster Management Guide/ . 
--
-- * 'rfcsAllowVersionUpgrade' - If @true@ , major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster.  Default: @true@ 
--
-- * 'rfcsClusterParameterGroupName' - The name of the parameter group to be associated with this cluster. Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html Working with Amazon Redshift Parameter Groups> . Constraints:     * Must be 1 to 255 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
--
-- * 'rfcsPort' - The port number on which the cluster accepts connections. Default: The same port as the original cluster. Constraints: Must be between @1115@ and @65535@ .
--
-- * 'rfcsClusterIdentifier' - The identifier of the cluster that will be created from restoring the snapshot. Constraints:     * Must contain from 1 to 63 alphanumeric characters or hyphens.     * Alphabetic characters must be lowercase.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.     * Must be unique for all clusters within an AWS account.
--
-- * 'rfcsSnapshotIdentifier' - The name of the snapshot from which to create the new cluster. This parameter isn't case sensitive. Example: @my-snapshot-id@ 
restoreFromClusterSnapshot
    :: Text -- ^ 'rfcsClusterIdentifier'
    -> Text -- ^ 'rfcsSnapshotIdentifier'
    -> RestoreFromClusterSnapshot
restoreFromClusterSnapshot pClusterIdentifier_
  pSnapshotIdentifier_
  = RestoreFromClusterSnapshot'{_rfcsManualSnapshotRetentionPeriod
                                  = Nothing,
                                _rfcsEnhancedVPCRouting = Nothing,
                                _rfcsAdditionalInfo = Nothing,
                                _rfcsSnapshotScheduleIdentifier = Nothing,
                                _rfcsPubliclyAccessible = Nothing,
                                _rfcsSnapshotClusterIdentifier = Nothing,
                                _rfcsMaintenanceTrackName = Nothing,
                                _rfcsHSMConfigurationIdentifier = Nothing,
                                _rfcsClusterSecurityGroups = Nothing,
                                _rfcsAutomatedSnapshotRetentionPeriod = Nothing,
                                _rfcsClusterSubnetGroupName = Nothing,
                                _rfcsHSMClientCertificateIdentifier = Nothing,
                                _rfcsNumberOfNodes = Nothing,
                                _rfcsElasticIP = Nothing,
                                _rfcsPreferredMaintenanceWindow = Nothing,
                                _rfcsKMSKeyId = Nothing,
                                _rfcsAvailabilityZone = Nothing,
                                _rfcsVPCSecurityGroupIds = Nothing,
                                _rfcsIAMRoles = Nothing,
                                _rfcsAvailabilityZoneRelocation = Nothing,
                                _rfcsOwnerAccount = Nothing,
                                _rfcsNodeType = Nothing,
                                _rfcsAllowVersionUpgrade = Nothing,
                                _rfcsClusterParameterGroupName = Nothing,
                                _rfcsPort = Nothing,
                                _rfcsClusterIdentifier = pClusterIdentifier_,
                                _rfcsSnapshotIdentifier = pSnapshotIdentifier_}

-- | The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots. The value must be either -1 or an integer between 1 and 3,653.
rfcsManualSnapshotRetentionPeriod :: Lens' RestoreFromClusterSnapshot (Maybe Int)
rfcsManualSnapshotRetentionPeriod = lens _rfcsManualSnapshotRetentionPeriod (\ s a -> s{_rfcsManualSnapshotRetentionPeriod = a})

-- | An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html Enhanced VPC Routing> in the Amazon Redshift Cluster Management Guide. If this option is @true@ , enhanced VPC routing is enabled.  Default: false
rfcsEnhancedVPCRouting :: Lens' RestoreFromClusterSnapshot (Maybe Bool)
rfcsEnhancedVPCRouting = lens _rfcsEnhancedVPCRouting (\ s a -> s{_rfcsEnhancedVPCRouting = a})

-- | Reserved.
rfcsAdditionalInfo :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsAdditionalInfo = lens _rfcsAdditionalInfo (\ s a -> s{_rfcsAdditionalInfo = a})

-- | A unique identifier for the snapshot schedule.
rfcsSnapshotScheduleIdentifier :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsSnapshotScheduleIdentifier = lens _rfcsSnapshotScheduleIdentifier (\ s a -> s{_rfcsSnapshotScheduleIdentifier = a})

-- | If @true@ , the cluster can be accessed from a public network. 
rfcsPubliclyAccessible :: Lens' RestoreFromClusterSnapshot (Maybe Bool)
rfcsPubliclyAccessible = lens _rfcsPubliclyAccessible (\ s a -> s{_rfcsPubliclyAccessible = a})

-- | The name of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.
rfcsSnapshotClusterIdentifier :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsSnapshotClusterIdentifier = lens _rfcsSnapshotClusterIdentifier (\ s a -> s{_rfcsSnapshotClusterIdentifier = a})

-- | The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the @MaintenanceTrack@ value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks.
rfcsMaintenanceTrackName :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsMaintenanceTrackName = lens _rfcsMaintenanceTrackName (\ s a -> s{_rfcsMaintenanceTrackName = a})

-- | Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.
rfcsHSMConfigurationIdentifier :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsHSMConfigurationIdentifier = lens _rfcsHSMConfigurationIdentifier (\ s a -> s{_rfcsHSMConfigurationIdentifier = a})

-- | A list of security groups to be associated with this cluster. Default: The default cluster security group for Amazon Redshift. Cluster security groups only apply to clusters outside of VPCs.
rfcsClusterSecurityGroups :: Lens' RestoreFromClusterSnapshot [Text]
rfcsClusterSecurityGroups = lens _rfcsClusterSecurityGroups (\ s a -> s{_rfcsClusterSecurityGroups = a}) . _Default . _Coerce

-- | The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with 'CreateClusterSnapshot' .  Default: The value selected for the cluster from which the snapshot was taken. Constraints: Must be a value from 0 to 35.
rfcsAutomatedSnapshotRetentionPeriod :: Lens' RestoreFromClusterSnapshot (Maybe Int)
rfcsAutomatedSnapshotRetentionPeriod = lens _rfcsAutomatedSnapshotRetentionPeriod (\ s a -> s{_rfcsAutomatedSnapshotRetentionPeriod = a})

-- | The name of the subnet group where you want to cluster restored. A snapshot of cluster in VPC can be restored only in VPC. Therefore, you must provide subnet group name where you want the cluster restored.
rfcsClusterSubnetGroupName :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsClusterSubnetGroupName = lens _rfcsClusterSubnetGroupName (\ s a -> s{_rfcsClusterSubnetGroupName = a})

-- | Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.
rfcsHSMClientCertificateIdentifier :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsHSMClientCertificateIdentifier = lens _rfcsHSMClientCertificateIdentifier (\ s a -> s{_rfcsHSMClientCertificateIdentifier = a})

-- | The number of nodes specified when provisioning the restored cluster.
rfcsNumberOfNodes :: Lens' RestoreFromClusterSnapshot (Maybe Int)
rfcsNumberOfNodes = lens _rfcsNumberOfNodes (\ s a -> s{_rfcsNumberOfNodes = a})

-- | The elastic IP (EIP) address for the cluster.
rfcsElasticIP :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsElasticIP = lens _rfcsElasticIP (\ s a -> s{_rfcsElasticIP = a})

-- | The weekly time range (in UTC) during which automated cluster maintenance can occur. Format: @ddd:hh24:mi-ddd:hh24:mi@  Default: The value selected for the cluster from which the snapshot was taken. For more information about the time blocks for each region, see <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows Maintenance Windows> in Amazon Redshift Cluster Management Guide.  Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun Constraints: Minimum 30-minute window.
rfcsPreferredMaintenanceWindow :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsPreferredMaintenanceWindow = lens _rfcsPreferredMaintenanceWindow (\ s a -> s{_rfcsPreferredMaintenanceWindow = a})

-- | The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster that you restore from a shared snapshot.
rfcsKMSKeyId :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsKMSKeyId = lens _rfcsKMSKeyId (\ s a -> s{_rfcsKMSKeyId = a})

-- | The Amazon EC2 Availability Zone in which to restore the cluster. Default: A random, system-chosen Availability Zone. Example: @us-east-2a@ 
rfcsAvailabilityZone :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsAvailabilityZone = lens _rfcsAvailabilityZone (\ s a -> s{_rfcsAvailabilityZone = a})

-- | A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster. Default: The default VPC security group is associated with the cluster. VPC security groups only apply to clusters in VPCs.
rfcsVPCSecurityGroupIds :: Lens' RestoreFromClusterSnapshot [Text]
rfcsVPCSecurityGroupIds = lens _rfcsVPCSecurityGroupIds (\ s a -> s{_rfcsVPCSecurityGroupIds = a}) . _Default . _Coerce

-- | A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 10 IAM roles in a single request. A cluster can have up to 10 IAM roles associated at any time.
rfcsIAMRoles :: Lens' RestoreFromClusterSnapshot [Text]
rfcsIAMRoles = lens _rfcsIAMRoles (\ s a -> s{_rfcsIAMRoles = a}) . _Default . _Coerce

-- | The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster is restored.
rfcsAvailabilityZoneRelocation :: Lens' RestoreFromClusterSnapshot (Maybe Bool)
rfcsAvailabilityZoneRelocation = lens _rfcsAvailabilityZoneRelocation (\ s a -> s{_rfcsAvailabilityZoneRelocation = a})

-- | The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.
rfcsOwnerAccount :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsOwnerAccount = lens _rfcsOwnerAccount (\ s a -> s{_rfcsOwnerAccount = a})

-- | The node type that the restored cluster will be provisioned with. Default: The node type of the cluster from which the snapshot was taken. You can modify this if you are using any DS node type. In that case, you can choose to restore into another DS node type of the same size. For example, you can restore ds1.8xlarge into ds2.8xlarge, or ds1.xlarge into ds2.xlarge. If you have a DC instance type, you must restore into that same instance type and size. In other words, you can only restore a dc1.large instance type into another dc1.large instance type or dc2.large instance type. You can't restore dc1.8xlarge to dc2.8xlarge. First restore to a dc1.8xlarge cluster, then resize to a dc2.8large cluster. For more information about node types, see <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes About Clusters and Nodes> in the /Amazon Redshift Cluster Management Guide/ . 
rfcsNodeType :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsNodeType = lens _rfcsNodeType (\ s a -> s{_rfcsNodeType = a})

-- | If @true@ , major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster.  Default: @true@ 
rfcsAllowVersionUpgrade :: Lens' RestoreFromClusterSnapshot (Maybe Bool)
rfcsAllowVersionUpgrade = lens _rfcsAllowVersionUpgrade (\ s a -> s{_rfcsAllowVersionUpgrade = a})

-- | The name of the parameter group to be associated with this cluster. Default: The default Amazon Redshift cluster parameter group. For information about the default parameter group, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html Working with Amazon Redshift Parameter Groups> . Constraints:     * Must be 1 to 255 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
rfcsClusterParameterGroupName :: Lens' RestoreFromClusterSnapshot (Maybe Text)
rfcsClusterParameterGroupName = lens _rfcsClusterParameterGroupName (\ s a -> s{_rfcsClusterParameterGroupName = a})

-- | The port number on which the cluster accepts connections. Default: The same port as the original cluster. Constraints: Must be between @1115@ and @65535@ .
rfcsPort :: Lens' RestoreFromClusterSnapshot (Maybe Int)
rfcsPort = lens _rfcsPort (\ s a -> s{_rfcsPort = a})

-- | The identifier of the cluster that will be created from restoring the snapshot. Constraints:     * Must contain from 1 to 63 alphanumeric characters or hyphens.     * Alphabetic characters must be lowercase.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.     * Must be unique for all clusters within an AWS account.
rfcsClusterIdentifier :: Lens' RestoreFromClusterSnapshot Text
rfcsClusterIdentifier = lens _rfcsClusterIdentifier (\ s a -> s{_rfcsClusterIdentifier = a})

-- | The name of the snapshot from which to create the new cluster. This parameter isn't case sensitive. Example: @my-snapshot-id@ 
rfcsSnapshotIdentifier :: Lens' RestoreFromClusterSnapshot Text
rfcsSnapshotIdentifier = lens _rfcsSnapshotIdentifier (\ s a -> s{_rfcsSnapshotIdentifier = a})

instance AWSRequest RestoreFromClusterSnapshot where
        type Rs RestoreFromClusterSnapshot =
             RestoreFromClusterSnapshotResponse
        request = postQuery redshift
        response
          = receiveXMLWrapper
              "RestoreFromClusterSnapshotResult"
              (\ s h x ->
                 RestoreFromClusterSnapshotResponse' <$>
                   (x .@? "Cluster") <*> (pure (fromEnum s)))

instance Hashable RestoreFromClusterSnapshot where

instance NFData RestoreFromClusterSnapshot where

instance ToHeaders RestoreFromClusterSnapshot where
        toHeaders = const mempty

instance ToPath RestoreFromClusterSnapshot where
        toPath = const "/"

instance ToQuery RestoreFromClusterSnapshot where
        toQuery RestoreFromClusterSnapshot'{..}
          = mconcat
              ["Action" =:
                 ("RestoreFromClusterSnapshot" :: ByteString),
               "Version" =: ("2012-12-01" :: ByteString),
               "ManualSnapshotRetentionPeriod" =:
                 _rfcsManualSnapshotRetentionPeriod,
               "EnhancedVpcRouting" =: _rfcsEnhancedVPCRouting,
               "AdditionalInfo" =: _rfcsAdditionalInfo,
               "SnapshotScheduleIdentifier" =:
                 _rfcsSnapshotScheduleIdentifier,
               "PubliclyAccessible" =: _rfcsPubliclyAccessible,
               "SnapshotClusterIdentifier" =:
                 _rfcsSnapshotClusterIdentifier,
               "MaintenanceTrackName" =: _rfcsMaintenanceTrackName,
               "HsmConfigurationIdentifier" =:
                 _rfcsHSMConfigurationIdentifier,
               "ClusterSecurityGroups" =:
                 toQuery
                   (toQueryList "ClusterSecurityGroupName" <$>
                      _rfcsClusterSecurityGroups),
               "AutomatedSnapshotRetentionPeriod" =:
                 _rfcsAutomatedSnapshotRetentionPeriod,
               "ClusterSubnetGroupName" =:
                 _rfcsClusterSubnetGroupName,
               "HsmClientCertificateIdentifier" =:
                 _rfcsHSMClientCertificateIdentifier,
               "NumberOfNodes" =: _rfcsNumberOfNodes,
               "ElasticIp" =: _rfcsElasticIP,
               "PreferredMaintenanceWindow" =:
                 _rfcsPreferredMaintenanceWindow,
               "KmsKeyId" =: _rfcsKMSKeyId,
               "AvailabilityZone" =: _rfcsAvailabilityZone,
               "VpcSecurityGroupIds" =:
                 toQuery
                   (toQueryList "VpcSecurityGroupId" <$>
                      _rfcsVPCSecurityGroupIds),
               "IamRoles" =:
                 toQuery (toQueryList "IamRoleArn" <$> _rfcsIAMRoles),
               "AvailabilityZoneRelocation" =:
                 _rfcsAvailabilityZoneRelocation,
               "OwnerAccount" =: _rfcsOwnerAccount,
               "NodeType" =: _rfcsNodeType,
               "AllowVersionUpgrade" =: _rfcsAllowVersionUpgrade,
               "ClusterParameterGroupName" =:
                 _rfcsClusterParameterGroupName,
               "Port" =: _rfcsPort,
               "ClusterIdentifier" =: _rfcsClusterIdentifier,
               "SnapshotIdentifier" =: _rfcsSnapshotIdentifier]

-- | /See:/ 'restoreFromClusterSnapshotResponse' smart constructor.
data RestoreFromClusterSnapshotResponse = RestoreFromClusterSnapshotResponse'{_rfcsrsCluster
                                                                              ::
                                                                              !(Maybe
                                                                                  Cluster),
                                                                              _rfcsrsResponseStatus
                                                                              ::
                                                                              !Int}
                                            deriving (Eq, Read, Show, Data,
                                                      Typeable, Generic)

-- | Creates a value of 'RestoreFromClusterSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfcsrsCluster' - Undocumented member.
--
-- * 'rfcsrsResponseStatus' - -- | The response status code.
restoreFromClusterSnapshotResponse
    :: Int -- ^ 'rfcsrsResponseStatus'
    -> RestoreFromClusterSnapshotResponse
restoreFromClusterSnapshotResponse pResponseStatus_
  = RestoreFromClusterSnapshotResponse'{_rfcsrsCluster
                                          = Nothing,
                                        _rfcsrsResponseStatus =
                                          pResponseStatus_}

-- | Undocumented member.
rfcsrsCluster :: Lens' RestoreFromClusterSnapshotResponse (Maybe Cluster)
rfcsrsCluster = lens _rfcsrsCluster (\ s a -> s{_rfcsrsCluster = a})

-- | -- | The response status code.
rfcsrsResponseStatus :: Lens' RestoreFromClusterSnapshotResponse Int
rfcsrsResponseStatus = lens _rfcsrsResponseStatus (\ s a -> s{_rfcsrsResponseStatus = a})

instance NFData RestoreFromClusterSnapshotResponse
         where
