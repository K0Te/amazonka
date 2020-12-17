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
-- Module      : Network.AWS.WorkSpaces.MigrateWorkspace
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Migrates a WorkSpace from one operating system or bundle type to another, while retaining the data on the user volume.
--
--
-- The migration process recreates the WorkSpace by using a new root volume from the target bundle image and the user volume from the last available snapshot of the original WorkSpace. During migration, the original @D:\Users\%USERNAME%@ user profile folder is renamed to @D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated@ . A new @D:\Users\%USERNAME%\@ folder is generated by the new OS. Certain files in the old user profile are moved to the new user profile.
--
-- For available migration scenarios, details about what happens during migration, and best practices, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/migrate-workspaces.html Migrate a WorkSpace> .
--
module Network.AWS.WorkSpaces.MigrateWorkspace
    (
    -- * Creating a Request
      migrateWorkspace
    , MigrateWorkspace
    -- * Request Lenses
    , mwSourceWorkspaceId
    , mwBundleId

    -- * Destructuring the Response
    , migrateWorkspaceResponse
    , MigrateWorkspaceResponse
    -- * Response Lenses
    , mwrsSourceWorkspaceId
    , mwrsTargetWorkspaceId
    , mwrsResponseStatus
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'migrateWorkspace' smart constructor.
data MigrateWorkspace = MigrateWorkspace'{_mwSourceWorkspaceId
                                          :: !Text,
                                          _mwBundleId :: !Text}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MigrateWorkspace' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwSourceWorkspaceId' - The identifier of the WorkSpace to migrate from.
--
-- * 'mwBundleId' - The identifier of the target bundle type to migrate the WorkSpace to.
migrateWorkspace
    :: Text -- ^ 'mwSourceWorkspaceId'
    -> Text -- ^ 'mwBundleId'
    -> MigrateWorkspace
migrateWorkspace pSourceWorkspaceId_ pBundleId_
  = MigrateWorkspace'{_mwSourceWorkspaceId =
                        pSourceWorkspaceId_,
                      _mwBundleId = pBundleId_}

-- | The identifier of the WorkSpace to migrate from.
mwSourceWorkspaceId :: Lens' MigrateWorkspace Text
mwSourceWorkspaceId = lens _mwSourceWorkspaceId (\ s a -> s{_mwSourceWorkspaceId = a})

-- | The identifier of the target bundle type to migrate the WorkSpace to.
mwBundleId :: Lens' MigrateWorkspace Text
mwBundleId = lens _mwBundleId (\ s a -> s{_mwBundleId = a})

instance AWSRequest MigrateWorkspace where
        type Rs MigrateWorkspace = MigrateWorkspaceResponse
        request = postJSON workSpaces
        response
          = receiveJSON
              (\ s h x ->
                 MigrateWorkspaceResponse' <$>
                   (x .?> "SourceWorkspaceId") <*>
                     (x .?> "TargetWorkspaceId")
                     <*> (pure (fromEnum s)))

instance Hashable MigrateWorkspace where

instance NFData MigrateWorkspace where

instance ToHeaders MigrateWorkspace where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("WorkspacesService.MigrateWorkspace" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON MigrateWorkspace where
        toJSON MigrateWorkspace'{..}
          = object
              (catMaybes
                 [Just ("SourceWorkspaceId" .= _mwSourceWorkspaceId),
                  Just ("BundleId" .= _mwBundleId)])

instance ToPath MigrateWorkspace where
        toPath = const "/"

instance ToQuery MigrateWorkspace where
        toQuery = const mempty

-- | /See:/ 'migrateWorkspaceResponse' smart constructor.
data MigrateWorkspaceResponse = MigrateWorkspaceResponse'{_mwrsSourceWorkspaceId
                                                          :: !(Maybe Text),
                                                          _mwrsTargetWorkspaceId
                                                          :: !(Maybe Text),
                                                          _mwrsResponseStatus ::
                                                          !Int}
                                  deriving (Eq, Read, Show, Data, Typeable,
                                            Generic)

-- | Creates a value of 'MigrateWorkspaceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwrsSourceWorkspaceId' - The original identifier of the WorkSpace that is being migrated.
--
-- * 'mwrsTargetWorkspaceId' - The new identifier of the WorkSpace that is being migrated. If the migration does not succeed, the target WorkSpace ID will not be used, and the WorkSpace will still have the original WorkSpace ID.
--
-- * 'mwrsResponseStatus' - -- | The response status code.
migrateWorkspaceResponse
    :: Int -- ^ 'mwrsResponseStatus'
    -> MigrateWorkspaceResponse
migrateWorkspaceResponse pResponseStatus_
  = MigrateWorkspaceResponse'{_mwrsSourceWorkspaceId =
                                Nothing,
                              _mwrsTargetWorkspaceId = Nothing,
                              _mwrsResponseStatus = pResponseStatus_}

-- | The original identifier of the WorkSpace that is being migrated.
mwrsSourceWorkspaceId :: Lens' MigrateWorkspaceResponse (Maybe Text)
mwrsSourceWorkspaceId = lens _mwrsSourceWorkspaceId (\ s a -> s{_mwrsSourceWorkspaceId = a})

-- | The new identifier of the WorkSpace that is being migrated. If the migration does not succeed, the target WorkSpace ID will not be used, and the WorkSpace will still have the original WorkSpace ID.
mwrsTargetWorkspaceId :: Lens' MigrateWorkspaceResponse (Maybe Text)
mwrsTargetWorkspaceId = lens _mwrsTargetWorkspaceId (\ s a -> s{_mwrsTargetWorkspaceId = a})

-- | -- | The response status code.
mwrsResponseStatus :: Lens' MigrateWorkspaceResponse Int
mwrsResponseStatus = lens _mwrsResponseStatus (\ s a -> s{_mwrsResponseStatus = a})

instance NFData MigrateWorkspaceResponse where
