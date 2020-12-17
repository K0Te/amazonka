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
-- Module      : Network.AWS.Route53.UpdateHealthCheck
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing health check. Note that some values can't be updated. 
--
--
-- For more information about updating health checks, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html Creating, Updating, and Deleting Health Checks> in the /Amazon Route 53 Developer Guide/ .
--
module Network.AWS.Route53.UpdateHealthCheck
    (
    -- * Creating a Request
      updateHealthCheck
    , UpdateHealthCheck
    -- * Request Lenses
    , uhcFailureThreshold
    , uhcIPAddress
    , uhcEnableSNI
    , uhcDisabled
    , uhcResetElements
    , uhcSearchString
    , uhcHealthThreshold
    , uhcRegions
    , uhcResourcePath
    , uhcInsufficientDataHealthStatus
    , uhcHealthCheckVersion
    , uhcAlarmIdentifier
    , uhcInverted
    , uhcFullyQualifiedDomainName
    , uhcChildHealthChecks
    , uhcPort
    , uhcHealthCheckId

    -- * Destructuring the Response
    , updateHealthCheckResponse
    , UpdateHealthCheckResponse
    -- * Response Lenses
    , uhcrsResponseStatus
    , uhcrsHealthCheck
    ) where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A complex type that contains information about a request to update a health check.
--
--
--
-- /See:/ 'updateHealthCheck' smart constructor.
data UpdateHealthCheck = UpdateHealthCheck'{_uhcFailureThreshold
                                            :: !(Maybe Nat),
                                            _uhcIPAddress :: !(Maybe Text),
                                            _uhcEnableSNI :: !(Maybe Bool),
                                            _uhcDisabled :: !(Maybe Bool),
                                            _uhcResetElements ::
                                            !(Maybe [ResettableElementName]),
                                            _uhcSearchString :: !(Maybe Text),
                                            _uhcHealthThreshold :: !(Maybe Nat),
                                            _uhcRegions ::
                                            !(Maybe (List1 HealthCheckRegion)),
                                            _uhcResourcePath :: !(Maybe Text),
                                            _uhcInsufficientDataHealthStatus ::
                                            !(Maybe
                                                InsufficientDataHealthStatus),
                                            _uhcHealthCheckVersion ::
                                            !(Maybe Nat),
                                            _uhcAlarmIdentifier ::
                                            !(Maybe AlarmIdentifier),
                                            _uhcInverted :: !(Maybe Bool),
                                            _uhcFullyQualifiedDomainName ::
                                            !(Maybe Text),
                                            _uhcChildHealthChecks ::
                                            !(Maybe [Text]),
                                            _uhcPort :: !(Maybe Nat),
                                            _uhcHealthCheckId :: !Text}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateHealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uhcFailureThreshold' - The number of consecutive health checks that an endpoint must pass or fail for Amazon Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa. For more information, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html How Amazon Route 53 Determines Whether an Endpoint Is Healthy> in the /Amazon Route 53 Developer Guide/ . If you don't specify a value for @FailureThreshold@ , the default value is three health checks.
--
-- * 'uhcIPAddress' - The IPv4 or IPv6 IP address for the endpoint that you want Amazon Route 53 to perform health checks on. If you don't specify a value for @IPAddress@ , Route 53 sends a DNS request to resolve the domain name that you specify in @FullyQualifiedDomainName@ at the interval that you specify in @RequestInterval@ . Using an IP address that is returned by DNS, Route 53 then checks the health of the endpoint. Use one of the following formats for the value of @IPAddress@ :      * __IPv4 address__ : four values between 0 and 255, separated by periods (.), for example, @192.0.2.44@ .     * __IPv6 address__ : eight groups of four hexadecimal values, separated by colons (:), for example, @2001:0db8:85a3:0000:0000:abcd:0001:2345@ . You can also shorten IPv6 addresses as described in RFC 5952, for example, @2001:db8:85a3::abcd:1:2345@ . If the endpoint is an EC2 instance, we recommend that you create an Elastic IP address, associate it with your EC2 instance, and specify the Elastic IP address for @IPAddress@ . This ensures that the IP address of your instance never changes. For more information, see the applicable documentation:     * Linux: <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html Elastic IP Addresses (EIP)> in the /Amazon EC2 User Guide for Linux Instances/      * Windows: <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-ip-addresses-eip.html Elastic IP Addresses (EIP)> in the /Amazon EC2 User Guide for Windows Instances/  For more information, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-FullyQualifiedDomainName FullyQualifiedDomainName> .  Constraints: Route 53 can't check the health of endpoints for which the IP address is in local, private, non-routable, or multicast ranges. For more information about IP addresses for which you can't create health checks, see the following documents:     * <https://tools.ietf.org/html/rfc5735 RFC 5735, Special Use IPv4 Addresses>      * <https://tools.ietf.org/html/rfc6598 RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space>      * <https://tools.ietf.org/html/rfc5156 RFC 5156, Special-Use IPv6 Addresses> 
--
-- * 'uhcEnableSNI' - Specify whether you want Amazon Route 53 to send the value of @FullyQualifiedDomainName@ to the endpoint in the @client_hello@ message during @TLS@ negotiation. This allows the endpoint to respond to @HTTPS@ health check requests with the applicable SSL/TLS certificate. Some endpoints require that HTTPS requests include the host name in the @client_hello@ message. If you don't enable SNI, the status of the health check will be SSL alert @handshake_failure@ . A health check can also have that status for other reasons. If SNI is enabled and you're still getting the error, check the SSL/TLS configuration on your endpoint and confirm that your certificate is valid. The SSL/TLS certificate on your endpoint includes a domain name in the @Common Name@ field and possibly several more in the @Subject Alternative Names@ field. One of the domain names in the certificate should match the value that you specify for @FullyQualifiedDomainName@ . If the endpoint responds to the @client_hello@ message with a certificate that does not include the domain name that you specified in @FullyQualifiedDomainName@ , a health checker will retry the handshake. In the second attempt, the health checker will omit @FullyQualifiedDomainName@ from the @client_hello@ message.
--
-- * 'uhcDisabled' - Stops Route 53 from performing health checks. When you disable a health check, here's what happens:     * __Health checks that check the health of endpoints:__ Route 53 stops submitting requests to your application, server, or other resource.     * __Calculated health checks:__ Route 53 stops aggregating the status of the referenced health checks.     * __Health checks that monitor CloudWatch alarms:__ Route 53 stops monitoring the corresponding CloudWatch metrics. After you disable a health check, Route 53 considers the status of the health check to always be healthy. If you configured DNS failover, Route 53 continues to route traffic to the corresponding resources. If you want to stop routing traffic to a resource, change the value of <https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-Inverted Inverted> .  Charges for a health check still apply when the health check is disabled. For more information, see <http://aws.amazon.com/route53/pricing/ Amazon Route 53 Pricing> .
--
-- * 'uhcResetElements' - A complex type that contains one @ResettableElementName@ element for each element that you want to reset to the default value. Valid values for @ResettableElementName@ include the following:     * @ChildHealthChecks@ : Amazon Route 53 resets <https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-ChildHealthChecks ChildHealthChecks> to null.     * @FullyQualifiedDomainName@ : Route 53 resets <https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-FullyQualifiedDomainName FullyQualifiedDomainName> . to null.     * @Regions@ : Route 53 resets the <https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions Regions> list to the default set of regions.      * @ResourcePath@ : Route 53 resets <https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-ResourcePath ResourcePath> to null.
--
-- * 'uhcSearchString' - If the value of @Type@ is @HTTP_STR_MATCH@ or @HTTPS_STR_MATCH@ , the string that you want Amazon Route 53 to search for in the response body from the specified resource. If the string appears in the response body, Route 53 considers the resource healthy. (You can't change the value of @Type@ when you update a health check.)
--
-- * 'uhcHealthThreshold' - The number of child health checks that are associated with a @CALCULATED@ health that Amazon Route 53 must consider healthy for the @CALCULATED@ health check to be considered healthy. To specify the child health checks that you want to associate with a @CALCULATED@ health check, use the @ChildHealthChecks@ and @ChildHealthCheck@ elements. Note the following:     * If you specify a number greater than the number of child health checks, Route 53 always considers this health check to be unhealthy.     * If you specify @0@ , Route 53 always considers this health check to be healthy.
--
-- * 'uhcRegions' - A complex type that contains one @Region@ element for each region that you want Amazon Route 53 health checkers to check the specified endpoint from.
--
-- * 'uhcResourcePath' - The path that you want Amazon Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, for example the file /docs/route53-health-check.html. You can also include query string parameters, for example, @/welcome.html?language=jp&login=y@ .  Specify this value only if you want to change it.
--
-- * 'uhcInsufficientDataHealthStatus' - When CloudWatch has insufficient data about the metric to determine the alarm state, the status that you want Amazon Route 53 to assign to the health check:     * @Healthy@ : Route 53 considers the health check to be healthy.     * @Unhealthy@ : Route 53 considers the health check to be unhealthy.     * @LastKnownStatus@ : Route 53 uses the status of the health check from the last time CloudWatch had sufficient data to determine the alarm state. For new health checks that have no last known status, the default status for the health check is healthy.
--
-- * 'uhcHealthCheckVersion' - A sequential counter that Amazon Route 53 sets to @1@ when you create a health check and increments by 1 each time you update settings for the health check. We recommend that you use @GetHealthCheck@ or @ListHealthChecks@ to get the current value of @HealthCheckVersion@ for the health check that you want to update, and that you include that value in your @UpdateHealthCheck@ request. This prevents Route 53 from overwriting an intervening update:     * If the value in the @UpdateHealthCheck@ request matches the value of @HealthCheckVersion@ in the health check, Route 53 updates the health check with the new settings.     * If the value of @HealthCheckVersion@ in the health check is greater, the health check was changed after you got the version number. Route 53 does not update the health check, and it returns a @HealthCheckVersionMismatch@ error.
--
-- * 'uhcAlarmIdentifier' - A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether the specified health check is healthy.
--
-- * 'uhcInverted' - Specify whether you want Amazon Route 53 to invert the status of a health check, for example, to consider a health check unhealthy when it otherwise would be considered healthy.
--
-- * 'uhcFullyQualifiedDomainName' - Amazon Route 53 behavior depends on whether you specify a value for @IPAddress@ . __If you specify a value for__ @IPAddress@ : Route 53 sends health check requests to the specified IPv4 or IPv6 address and passes the value of @FullyQualifiedDomainName@ in the @Host@ header for all health checks except TCP health checks. This is typically the fully qualified DNS name of the endpoint on which you want Route 53 to perform health checks. When Route 53 checks the health of an endpoint, here is how it constructs the @Host@ header:     * If you specify a value of @80@ for @Port@ and @HTTP@ or @HTTP_STR_MATCH@ for @Type@ , Route 53 passes the value of @FullyQualifiedDomainName@ to the endpoint in the @Host@ header.     * If you specify a value of @443@ for @Port@ and @HTTPS@ or @HTTPS_STR_MATCH@ for @Type@ , Route 53 passes the value of @FullyQualifiedDomainName@ to the endpoint in the @Host@ header.     * If you specify another value for @Port@ and any value except @TCP@ for @Type@ , Route 53 passes /@FullyQualifiedDomainName@ :@Port@ / to the endpoint in the @Host@ header. If you don't specify a value for @FullyQualifiedDomainName@ , Route 53 substitutes the value of @IPAddress@ in the @Host@ header in each of the above cases. __If you don't specify a value for__ @IPAddress@ : If you don't specify a value for @IPAddress@ , Route 53 sends a DNS request to the domain that you specify in @FullyQualifiedDomainName@ at the interval you specify in @RequestInterval@ . Using an IPv4 address that is returned by DNS, Route 53 then checks the health of the endpoint. If you want to check the health of weighted, latency, or failover resource record sets and you choose to specify the endpoint only by @FullyQualifiedDomainName@ , we recommend that you create a separate health check for each endpoint. For example, create a health check for each HTTP server that is serving content for www.example.com. For the value of @FullyQualifiedDomainName@ , specify the domain name of the server (such as @us-east-2-www.example.com@ ), not the name of the resource record sets (www.example.com). /Important:/ In this configuration, if the value of @FullyQualifiedDomainName@ matches the name of the resource record sets and you then associate the health check with those resource record sets, health check results will be unpredictable. In addition, if the value of @Type@ is @HTTP@ , @HTTPS@ , @HTTP_STR_MATCH@ , or @HTTPS_STR_MATCH@ , Route 53 passes the value of @FullyQualifiedDomainName@ in the @Host@ header, as it does when you specify a value for @IPAddress@ . If the value of @Type@ is @TCP@ , Route 53 doesn't pass a @Host@ header.
--
-- * 'uhcChildHealthChecks' - A complex type that contains one @ChildHealthCheck@ element for each health check that you want to associate with a @CALCULATED@ health check.
--
-- * 'uhcPort' - The port on the endpoint that you want Amazon Route 53 to perform health checks on.
--
-- * 'uhcHealthCheckId' - The ID for the health check for which you want detailed information. When you created the health check, @CreateHealthCheck@ returned the ID in the response, in the @HealthCheckId@ element.
updateHealthCheck
    :: Text -- ^ 'uhcHealthCheckId'
    -> UpdateHealthCheck
updateHealthCheck pHealthCheckId_
  = UpdateHealthCheck'{_uhcFailureThreshold = Nothing,
                       _uhcIPAddress = Nothing, _uhcEnableSNI = Nothing,
                       _uhcDisabled = Nothing, _uhcResetElements = Nothing,
                       _uhcSearchString = Nothing,
                       _uhcHealthThreshold = Nothing, _uhcRegions = Nothing,
                       _uhcResourcePath = Nothing,
                       _uhcInsufficientDataHealthStatus = Nothing,
                       _uhcHealthCheckVersion = Nothing,
                       _uhcAlarmIdentifier = Nothing,
                       _uhcInverted = Nothing,
                       _uhcFullyQualifiedDomainName = Nothing,
                       _uhcChildHealthChecks = Nothing, _uhcPort = Nothing,
                       _uhcHealthCheckId = pHealthCheckId_}

-- | The number of consecutive health checks that an endpoint must pass or fail for Amazon Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa. For more information, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html How Amazon Route 53 Determines Whether an Endpoint Is Healthy> in the /Amazon Route 53 Developer Guide/ . If you don't specify a value for @FailureThreshold@ , the default value is three health checks.
uhcFailureThreshold :: Lens' UpdateHealthCheck (Maybe Natural)
uhcFailureThreshold = lens _uhcFailureThreshold (\ s a -> s{_uhcFailureThreshold = a}) . mapping _Nat

-- | The IPv4 or IPv6 IP address for the endpoint that you want Amazon Route 53 to perform health checks on. If you don't specify a value for @IPAddress@ , Route 53 sends a DNS request to resolve the domain name that you specify in @FullyQualifiedDomainName@ at the interval that you specify in @RequestInterval@ . Using an IP address that is returned by DNS, Route 53 then checks the health of the endpoint. Use one of the following formats for the value of @IPAddress@ :      * __IPv4 address__ : four values between 0 and 255, separated by periods (.), for example, @192.0.2.44@ .     * __IPv6 address__ : eight groups of four hexadecimal values, separated by colons (:), for example, @2001:0db8:85a3:0000:0000:abcd:0001:2345@ . You can also shorten IPv6 addresses as described in RFC 5952, for example, @2001:db8:85a3::abcd:1:2345@ . If the endpoint is an EC2 instance, we recommend that you create an Elastic IP address, associate it with your EC2 instance, and specify the Elastic IP address for @IPAddress@ . This ensures that the IP address of your instance never changes. For more information, see the applicable documentation:     * Linux: <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html Elastic IP Addresses (EIP)> in the /Amazon EC2 User Guide for Linux Instances/      * Windows: <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-ip-addresses-eip.html Elastic IP Addresses (EIP)> in the /Amazon EC2 User Guide for Windows Instances/  For more information, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-FullyQualifiedDomainName FullyQualifiedDomainName> .  Constraints: Route 53 can't check the health of endpoints for which the IP address is in local, private, non-routable, or multicast ranges. For more information about IP addresses for which you can't create health checks, see the following documents:     * <https://tools.ietf.org/html/rfc5735 RFC 5735, Special Use IPv4 Addresses>      * <https://tools.ietf.org/html/rfc6598 RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space>      * <https://tools.ietf.org/html/rfc5156 RFC 5156, Special-Use IPv6 Addresses> 
uhcIPAddress :: Lens' UpdateHealthCheck (Maybe Text)
uhcIPAddress = lens _uhcIPAddress (\ s a -> s{_uhcIPAddress = a})

-- | Specify whether you want Amazon Route 53 to send the value of @FullyQualifiedDomainName@ to the endpoint in the @client_hello@ message during @TLS@ negotiation. This allows the endpoint to respond to @HTTPS@ health check requests with the applicable SSL/TLS certificate. Some endpoints require that HTTPS requests include the host name in the @client_hello@ message. If you don't enable SNI, the status of the health check will be SSL alert @handshake_failure@ . A health check can also have that status for other reasons. If SNI is enabled and you're still getting the error, check the SSL/TLS configuration on your endpoint and confirm that your certificate is valid. The SSL/TLS certificate on your endpoint includes a domain name in the @Common Name@ field and possibly several more in the @Subject Alternative Names@ field. One of the domain names in the certificate should match the value that you specify for @FullyQualifiedDomainName@ . If the endpoint responds to the @client_hello@ message with a certificate that does not include the domain name that you specified in @FullyQualifiedDomainName@ , a health checker will retry the handshake. In the second attempt, the health checker will omit @FullyQualifiedDomainName@ from the @client_hello@ message.
uhcEnableSNI :: Lens' UpdateHealthCheck (Maybe Bool)
uhcEnableSNI = lens _uhcEnableSNI (\ s a -> s{_uhcEnableSNI = a})

-- | Stops Route 53 from performing health checks. When you disable a health check, here's what happens:     * __Health checks that check the health of endpoints:__ Route 53 stops submitting requests to your application, server, or other resource.     * __Calculated health checks:__ Route 53 stops aggregating the status of the referenced health checks.     * __Health checks that monitor CloudWatch alarms:__ Route 53 stops monitoring the corresponding CloudWatch metrics. After you disable a health check, Route 53 considers the status of the health check to always be healthy. If you configured DNS failover, Route 53 continues to route traffic to the corresponding resources. If you want to stop routing traffic to a resource, change the value of <https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-Inverted Inverted> .  Charges for a health check still apply when the health check is disabled. For more information, see <http://aws.amazon.com/route53/pricing/ Amazon Route 53 Pricing> .
uhcDisabled :: Lens' UpdateHealthCheck (Maybe Bool)
uhcDisabled = lens _uhcDisabled (\ s a -> s{_uhcDisabled = a})

-- | A complex type that contains one @ResettableElementName@ element for each element that you want to reset to the default value. Valid values for @ResettableElementName@ include the following:     * @ChildHealthChecks@ : Amazon Route 53 resets <https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-ChildHealthChecks ChildHealthChecks> to null.     * @FullyQualifiedDomainName@ : Route 53 resets <https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-FullyQualifiedDomainName FullyQualifiedDomainName> . to null.     * @Regions@ : Route 53 resets the <https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions Regions> list to the default set of regions.      * @ResourcePath@ : Route 53 resets <https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-ResourcePath ResourcePath> to null.
uhcResetElements :: Lens' UpdateHealthCheck [ResettableElementName]
uhcResetElements = lens _uhcResetElements (\ s a -> s{_uhcResetElements = a}) . _Default . _Coerce

-- | If the value of @Type@ is @HTTP_STR_MATCH@ or @HTTPS_STR_MATCH@ , the string that you want Amazon Route 53 to search for in the response body from the specified resource. If the string appears in the response body, Route 53 considers the resource healthy. (You can't change the value of @Type@ when you update a health check.)
uhcSearchString :: Lens' UpdateHealthCheck (Maybe Text)
uhcSearchString = lens _uhcSearchString (\ s a -> s{_uhcSearchString = a})

-- | The number of child health checks that are associated with a @CALCULATED@ health that Amazon Route 53 must consider healthy for the @CALCULATED@ health check to be considered healthy. To specify the child health checks that you want to associate with a @CALCULATED@ health check, use the @ChildHealthChecks@ and @ChildHealthCheck@ elements. Note the following:     * If you specify a number greater than the number of child health checks, Route 53 always considers this health check to be unhealthy.     * If you specify @0@ , Route 53 always considers this health check to be healthy.
uhcHealthThreshold :: Lens' UpdateHealthCheck (Maybe Natural)
uhcHealthThreshold = lens _uhcHealthThreshold (\ s a -> s{_uhcHealthThreshold = a}) . mapping _Nat

-- | A complex type that contains one @Region@ element for each region that you want Amazon Route 53 health checkers to check the specified endpoint from.
uhcRegions :: Lens' UpdateHealthCheck (Maybe (NonEmpty HealthCheckRegion))
uhcRegions = lens _uhcRegions (\ s a -> s{_uhcRegions = a}) . mapping _List1

-- | The path that you want Amazon Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, for example the file /docs/route53-health-check.html. You can also include query string parameters, for example, @/welcome.html?language=jp&login=y@ .  Specify this value only if you want to change it.
uhcResourcePath :: Lens' UpdateHealthCheck (Maybe Text)
uhcResourcePath = lens _uhcResourcePath (\ s a -> s{_uhcResourcePath = a})

-- | When CloudWatch has insufficient data about the metric to determine the alarm state, the status that you want Amazon Route 53 to assign to the health check:     * @Healthy@ : Route 53 considers the health check to be healthy.     * @Unhealthy@ : Route 53 considers the health check to be unhealthy.     * @LastKnownStatus@ : Route 53 uses the status of the health check from the last time CloudWatch had sufficient data to determine the alarm state. For new health checks that have no last known status, the default status for the health check is healthy.
uhcInsufficientDataHealthStatus :: Lens' UpdateHealthCheck (Maybe InsufficientDataHealthStatus)
uhcInsufficientDataHealthStatus = lens _uhcInsufficientDataHealthStatus (\ s a -> s{_uhcInsufficientDataHealthStatus = a})

-- | A sequential counter that Amazon Route 53 sets to @1@ when you create a health check and increments by 1 each time you update settings for the health check. We recommend that you use @GetHealthCheck@ or @ListHealthChecks@ to get the current value of @HealthCheckVersion@ for the health check that you want to update, and that you include that value in your @UpdateHealthCheck@ request. This prevents Route 53 from overwriting an intervening update:     * If the value in the @UpdateHealthCheck@ request matches the value of @HealthCheckVersion@ in the health check, Route 53 updates the health check with the new settings.     * If the value of @HealthCheckVersion@ in the health check is greater, the health check was changed after you got the version number. Route 53 does not update the health check, and it returns a @HealthCheckVersionMismatch@ error.
uhcHealthCheckVersion :: Lens' UpdateHealthCheck (Maybe Natural)
uhcHealthCheckVersion = lens _uhcHealthCheckVersion (\ s a -> s{_uhcHealthCheckVersion = a}) . mapping _Nat

-- | A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether the specified health check is healthy.
uhcAlarmIdentifier :: Lens' UpdateHealthCheck (Maybe AlarmIdentifier)
uhcAlarmIdentifier = lens _uhcAlarmIdentifier (\ s a -> s{_uhcAlarmIdentifier = a})

-- | Specify whether you want Amazon Route 53 to invert the status of a health check, for example, to consider a health check unhealthy when it otherwise would be considered healthy.
uhcInverted :: Lens' UpdateHealthCheck (Maybe Bool)
uhcInverted = lens _uhcInverted (\ s a -> s{_uhcInverted = a})

-- | Amazon Route 53 behavior depends on whether you specify a value for @IPAddress@ . __If you specify a value for__ @IPAddress@ : Route 53 sends health check requests to the specified IPv4 or IPv6 address and passes the value of @FullyQualifiedDomainName@ in the @Host@ header for all health checks except TCP health checks. This is typically the fully qualified DNS name of the endpoint on which you want Route 53 to perform health checks. When Route 53 checks the health of an endpoint, here is how it constructs the @Host@ header:     * If you specify a value of @80@ for @Port@ and @HTTP@ or @HTTP_STR_MATCH@ for @Type@ , Route 53 passes the value of @FullyQualifiedDomainName@ to the endpoint in the @Host@ header.     * If you specify a value of @443@ for @Port@ and @HTTPS@ or @HTTPS_STR_MATCH@ for @Type@ , Route 53 passes the value of @FullyQualifiedDomainName@ to the endpoint in the @Host@ header.     * If you specify another value for @Port@ and any value except @TCP@ for @Type@ , Route 53 passes /@FullyQualifiedDomainName@ :@Port@ / to the endpoint in the @Host@ header. If you don't specify a value for @FullyQualifiedDomainName@ , Route 53 substitutes the value of @IPAddress@ in the @Host@ header in each of the above cases. __If you don't specify a value for__ @IPAddress@ : If you don't specify a value for @IPAddress@ , Route 53 sends a DNS request to the domain that you specify in @FullyQualifiedDomainName@ at the interval you specify in @RequestInterval@ . Using an IPv4 address that is returned by DNS, Route 53 then checks the health of the endpoint. If you want to check the health of weighted, latency, or failover resource record sets and you choose to specify the endpoint only by @FullyQualifiedDomainName@ , we recommend that you create a separate health check for each endpoint. For example, create a health check for each HTTP server that is serving content for www.example.com. For the value of @FullyQualifiedDomainName@ , specify the domain name of the server (such as @us-east-2-www.example.com@ ), not the name of the resource record sets (www.example.com). /Important:/ In this configuration, if the value of @FullyQualifiedDomainName@ matches the name of the resource record sets and you then associate the health check with those resource record sets, health check results will be unpredictable. In addition, if the value of @Type@ is @HTTP@ , @HTTPS@ , @HTTP_STR_MATCH@ , or @HTTPS_STR_MATCH@ , Route 53 passes the value of @FullyQualifiedDomainName@ in the @Host@ header, as it does when you specify a value for @IPAddress@ . If the value of @Type@ is @TCP@ , Route 53 doesn't pass a @Host@ header.
uhcFullyQualifiedDomainName :: Lens' UpdateHealthCheck (Maybe Text)
uhcFullyQualifiedDomainName = lens _uhcFullyQualifiedDomainName (\ s a -> s{_uhcFullyQualifiedDomainName = a})

-- | A complex type that contains one @ChildHealthCheck@ element for each health check that you want to associate with a @CALCULATED@ health check.
uhcChildHealthChecks :: Lens' UpdateHealthCheck [Text]
uhcChildHealthChecks = lens _uhcChildHealthChecks (\ s a -> s{_uhcChildHealthChecks = a}) . _Default . _Coerce

-- | The port on the endpoint that you want Amazon Route 53 to perform health checks on.
uhcPort :: Lens' UpdateHealthCheck (Maybe Natural)
uhcPort = lens _uhcPort (\ s a -> s{_uhcPort = a}) . mapping _Nat

-- | The ID for the health check for which you want detailed information. When you created the health check, @CreateHealthCheck@ returned the ID in the response, in the @HealthCheckId@ element.
uhcHealthCheckId :: Lens' UpdateHealthCheck Text
uhcHealthCheckId = lens _uhcHealthCheckId (\ s a -> s{_uhcHealthCheckId = a})

instance AWSRequest UpdateHealthCheck where
        type Rs UpdateHealthCheck = UpdateHealthCheckResponse
        request = postXML route53
        response
          = receiveXML
              (\ s h x ->
                 UpdateHealthCheckResponse' <$>
                   (pure (fromEnum s)) <*> (x .@ "HealthCheck"))

instance Hashable UpdateHealthCheck where

instance NFData UpdateHealthCheck where

instance ToElement UpdateHealthCheck where
        toElement
          = mkElement
              "{https://route53.amazonaws.com/doc/2013-04-01/}UpdateHealthCheckRequest"

instance ToHeaders UpdateHealthCheck where
        toHeaders = const mempty

instance ToPath UpdateHealthCheck where
        toPath UpdateHealthCheck'{..}
          = mconcat
              ["/2013-04-01/healthcheck/", toBS _uhcHealthCheckId]

instance ToQuery UpdateHealthCheck where
        toQuery = const mempty

instance ToXML UpdateHealthCheck where
        toXML UpdateHealthCheck'{..}
          = mconcat
              ["FailureThreshold" @= _uhcFailureThreshold,
               "IPAddress" @= _uhcIPAddress,
               "EnableSNI" @= _uhcEnableSNI,
               "Disabled" @= _uhcDisabled,
               "ResetElements" @=
                 toXML
                   (toXMLList "ResettableElementName" <$>
                      _uhcResetElements),
               "SearchString" @= _uhcSearchString,
               "HealthThreshold" @= _uhcHealthThreshold,
               "Regions" @=
                 toXML (toXMLList "Region" <$> _uhcRegions),
               "ResourcePath" @= _uhcResourcePath,
               "InsufficientDataHealthStatus" @=
                 _uhcInsufficientDataHealthStatus,
               "HealthCheckVersion" @= _uhcHealthCheckVersion,
               "AlarmIdentifier" @= _uhcAlarmIdentifier,
               "Inverted" @= _uhcInverted,
               "FullyQualifiedDomainName" @=
                 _uhcFullyQualifiedDomainName,
               "ChildHealthChecks" @=
                 toXML
                   (toXMLList "ChildHealthCheck" <$>
                      _uhcChildHealthChecks),
               "Port" @= _uhcPort]

-- | A complex type that contains the response to the @UpdateHealthCheck@ request.
--
--
--
-- /See:/ 'updateHealthCheckResponse' smart constructor.
data UpdateHealthCheckResponse = UpdateHealthCheckResponse'{_uhcrsResponseStatus
                                                            :: !Int,
                                                            _uhcrsHealthCheck ::
                                                            !HealthCheck}
                                   deriving (Eq, Read, Show, Data, Typeable,
                                             Generic)

-- | Creates a value of 'UpdateHealthCheckResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uhcrsResponseStatus' - -- | The response status code.
--
-- * 'uhcrsHealthCheck' - A complex type that contains the response to an @UpdateHealthCheck@ request.
updateHealthCheckResponse
    :: Int -- ^ 'uhcrsResponseStatus'
    -> HealthCheck -- ^ 'uhcrsHealthCheck'
    -> UpdateHealthCheckResponse
updateHealthCheckResponse pResponseStatus_
  pHealthCheck_
  = UpdateHealthCheckResponse'{_uhcrsResponseStatus =
                                 pResponseStatus_,
                               _uhcrsHealthCheck = pHealthCheck_}

-- | -- | The response status code.
uhcrsResponseStatus :: Lens' UpdateHealthCheckResponse Int
uhcrsResponseStatus = lens _uhcrsResponseStatus (\ s a -> s{_uhcrsResponseStatus = a})

-- | A complex type that contains the response to an @UpdateHealthCheck@ request.
uhcrsHealthCheck :: Lens' UpdateHealthCheckResponse HealthCheck
uhcrsHealthCheck = lens _uhcrsHealthCheck (\ s a -> s{_uhcrsHealthCheck = a})

instance NFData UpdateHealthCheckResponse where
