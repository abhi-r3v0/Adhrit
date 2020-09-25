.class public final Lo/setMinWidth;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onNavigationEvent:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lo/setMinWidth;->onNavigationEvent:Ljava/security/SecureRandom;

    return-void
.end method

.method public static onNavigationEvent(Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;)[B
    .locals 9

    .line 1019
    iget v0, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->onNavigationEvent:I

    .line 32
    new-array v1, v0, [B

    .line 2015
    iget-object v2, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setMinHeight;

    .line 34
    sget-object v3, Lo/setTag;->IPostMessageService:Lo/setMinHeight;

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v3, :cond_0

    .line 35
    new-instance p0, Lo/setThumbResource$onPostMessage;

    invoke-direct {p0}, Lo/setThumbResource$onPostMessage;-><init>()V

    .line 2086
    iget-object v2, p0, Lo/setThumbResource$onPostMessage;->onPostMessage:[B

    iget-object v3, p0, Lo/setThumbResource$onPostMessage;->onPostMessage:[B

    aget-byte v3, v3, v7

    invoke-static {v3, v5, v6}, Lo/extraCallback;->ICustomTabsCallback(BIZ)B

    move-result v3

    aput-byte v3, v2, v7

    .line 2094
    iget-object v2, p0, Lo/setThumbResource$onPostMessage;->onPostMessage:[B

    iget-object v3, p0, Lo/setThumbResource$onPostMessage;->onPostMessage:[B

    aget-byte v3, v3, v7

    invoke-static {v3, v4, v6}, Lo/extraCallback;->ICustomTabsCallback(BIZ)B

    move-result v3

    aput-byte v3, v2, v7

    .line 2128
    iget-object v2, p0, Lo/setThumbResource$onPostMessage;->onPostMessage:[B

    iget-object p0, p0, Lo/setThumbResource$onPostMessage;->onPostMessage:[B

    array-length p0, p0

    invoke-static {v2, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    goto/16 :goto_0

    .line 3015
    :cond_0
    iget-object v2, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setMinHeight;

    .line 39
    sget-object v3, Lo/setTag;->ICustomTabsService:Lo/setMinHeight;

    const-string v8, "0"

    if-ne v2, v3, :cond_1

    .line 40
    sget-object v2, Lo/setOnHierarchyChangeListener;->onResult:Lo/setOnHierarchyChangeListener;

    .line 3927
    iget v2, v2, Lo/setOnHierarchyChangeListener;->unregisterCallbackListener:I

    .line 40
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 4019
    iget p0, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->onNavigationEvent:I

    shl-int/2addr p0, v6

    .line 40
    invoke-static {v2, p0, v8}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/extraCallback;->extraCallback(Ljava/lang/String;)[B

    move-result-object p0

    goto/16 :goto_0

    .line 5015
    :cond_1
    iget-object v2, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setMinHeight;

    .line 42
    sget-object v3, Lo/setTag;->ICustomTabsCallback$Stub$Proxy:Lo/setMinHeight;

    if-ne v2, v3, :cond_2

    .line 43
    sget-object v2, Lo/CoordinatorLayout;->onPostMessage:Lo/CoordinatorLayout;

    .line 5413
    iget v2, v2, Lo/CoordinatorLayout;->onMessageChannelReady:I

    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 6019
    iget p0, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->onNavigationEvent:I

    shl-int/2addr p0, v6

    .line 43
    invoke-static {v2, p0, v8}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/extraCallback;->extraCallback(Ljava/lang/String;)[B

    move-result-object p0

    goto/16 :goto_0

    .line 7015
    :cond_2
    iget-object v2, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setMinHeight;

    .line 45
    sget-object v3, Lo/setTag;->onTransact:Lo/setMinHeight;

    if-ne v2, v3, :cond_3

    .line 46
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyMMdd"

    invoke-direct {p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/extraCallback;->extraCallback(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 8015
    :cond_3
    iget-object v2, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setMinHeight;

    .line 48
    sget-object v3, Lo/setTag;->asInterface:Lo/setMinHeight;

    if-ne v2, v3, :cond_4

    new-array p0, v6, [B

    .line 49
    sget-object v2, Lo/setFitsSystemWindows;->onMessageChannelReady:Lo/setFitsSystemWindows;

    .line 8042
    iget v2, v2, Lo/setFitsSystemWindows;->extraCallback:I

    int-to-byte v2, v2

    aput-byte v2, p0, v7

    goto :goto_0

    .line 9015
    :cond_4
    iget-object v2, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setMinHeight;

    .line 50
    sget-object v3, Lo/setTag;->newSession:Lo/setMinHeight;

    if-ne v2, v3, :cond_5

    const-string p0, "00"

    .line 51
    invoke-static {p0}, Lo/extraCallback;->extraCallback(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 10015
    :cond_5
    iget-object v2, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setMinHeight;

    .line 52
    sget-object v3, Lo/setTag;->requestPostMessageChannel:Lo/setMinHeight;

    if-ne v2, v3, :cond_6

    new-array p0, v6, [B

    const/16 v2, 0x22

    aput-byte v2, p0, v7

    goto :goto_0

    .line 11015
    :cond_6
    iget-object v2, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setMinHeight;

    .line 54
    sget-object v3, Lo/setTag;->extraCommand:Lo/setMinHeight;

    if-ne v2, v3, :cond_7

    new-array p0, v4, [B

    .line 55
    fill-array-data p0, :array_0

    goto :goto_0

    .line 12015
    :cond_7
    iget-object v2, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setMinHeight;

    .line 56
    sget-object v3, Lo/setTag;->updateVisuals:Lo/setMinHeight;

    if-ne v2, v3, :cond_8

    new-array p0, v5, [B

    .line 57
    fill-array-data p0, :array_1

    goto :goto_0

    .line 13015
    :cond_8
    iget-object v2, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setMinHeight;

    .line 58
    sget-object v3, Lo/setTag;->INotificationSideChannel:Lo/setMinHeight;

    if-ne v2, v3, :cond_9

    const-string p0, "7345123215904501"

    .line 59
    invoke-static {p0}, Lo/extraCallback;->extraCallback(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 14015
    :cond_9
    iget-object p0, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setMinHeight;

    .line 60
    sget-object v2, Lo/setTag;->postMessage:Lo/setMinHeight;

    if-ne p0, v2, :cond_a

    .line 61
    sget-object p0, Lo/setMinWidth;->onNavigationEvent:Ljava/security/SecureRandom;

    invoke-virtual {p0, v1}, Ljava/util/Random;->nextBytes([B)V

    :cond_a
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_b

    .line 64
    array-length v2, p0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v7, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    return-object v1

    :array_0
    .array-data 1
        -0x20t
        -0x60t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x72t
        0x0t
        -0x50t
        0x50t
        0x5t
    .end array-data
.end method
