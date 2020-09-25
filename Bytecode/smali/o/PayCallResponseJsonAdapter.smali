.class final Lo/PayCallResponseJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;
.implements Lcom/google/android/exoplayer2/upstream/Loader$extraCallback;
.implements Lo/CardBinResponseJsonAdapter;
.implements Lo/ExceptionTracker;
.implements Lo/CardBinResponse$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PayCallResponseJsonAdapter$onNavigationEvent;,
        Lo/PayCallResponseJsonAdapter$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady<",
        "Lo/component3;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$extraCallback;",
        "Lo/CardBinResponseJsonAdapter;",
        "Lo/ExceptionTracker;",
        "Lo/CardBinResponse$onMessageChannelReady;"
    }
.end annotation


# instance fields
.field private AudioAttributesCompatParcelizer:J

.field private AudioAttributesImplApi21Parcelizer:Z

.field private AudioAttributesImplBaseParcelizer:I

.field private final ICustomTabsCallback:Lo/PayCallResponseJsonAdapter$onMessageChannelReady;

.field private final ICustomTabsCallback$Stub:Lo/ViewContainerJsonAdapter;

.field private final ICustomTabsCallback$Stub$Proxy:Ljava/lang/Runnable;

.field private final ICustomTabsService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/OrderStatusResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub:I

.field private ICustomTabsService$Stub$Proxy:I

.field private INotificationSideChannel:I

.field private INotificationSideChannel$Default:Lo/JuspaySessionToken;

.field private INotificationSideChannel$Stub:I

.field private INotificationSideChannel$Stub$Proxy:[I

.field private IPostMessageService:I

.field private IPostMessageService$Stub:Z

.field private IPostMessageService$Stub$Proxy:Lo/p$a;

.field private IconCompatParcelizer:Z

.field private MediaBrowserCompat:J

.field private RemoteActionCompatParcelizer:[Z

.field private final asBinder:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final asInterface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/OrderStatusResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private cancel:Z

.field private cancelAll:Lo/p$a;

.field private connect:Z

.field private disconnect:Z

.field private final extraCallback:Lo/PaymentRequest;

.field private extraCommand:[Lo/CardBinResponse;

.field private getDefaultImpl:Lo/JuspaySessionToken;

.field private final getInterfaceDescriptor:Landroid/os/Handler;

.field private mayLaunchUrl:[I

.field private final newSession:Ljava/lang/Runnable;

.field private notify:Z

.field private final onMessageChannelReady:Lo/p$a;

.field private final onNavigationEvent:Lo/ListInstrumentJsonAdapter;

.field private final onPostMessage:I

.field private final onRelationshipValidationResult:Lo/ListInstrumentJsonAdapter$extraCallback;

.field private final onTransact:Lo/Account$extraCallback;

.field private final postMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/generateLink;",
            ">;"
        }
    .end annotation
.end field

.field private read:J

.field private requestPostMessageChannel:Z

.field private setDefaultImpl:Z

.field private updateVisuals:I

.field private validateRelationship:Z

.field private final warmup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/PayCallRequest;",
            ">;"
        }
    .end annotation
.end field

.field private write:[Z


# direct methods
.method public constructor <init>(ILo/PayCallResponseJsonAdapter$onMessageChannelReady;Lo/ListInstrumentJsonAdapter;Ljava/util/Map;Lo/PaymentRequest;JLo/p$a;Lo/ViewContainerJsonAdapter;Lo/Account$extraCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/PayCallResponseJsonAdapter$onMessageChannelReady;",
            "Lo/ListInstrumentJsonAdapter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/generateLink;",
            ">;",
            "Lo/PaymentRequest;",
            "J",
            "Lo/p$a;",
            "Lo/ViewContainerJsonAdapter;",
            "Lo/Account$extraCallback;",
            ")V"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lo/PayCallResponseJsonAdapter;->onPostMessage:I

    .line 169
    iput-object p2, p0, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback:Lo/PayCallResponseJsonAdapter$onMessageChannelReady;

    .line 170
    iput-object p3, p0, Lo/PayCallResponseJsonAdapter;->onNavigationEvent:Lo/ListInstrumentJsonAdapter;

    .line 171
    iput-object p4, p0, Lo/PayCallResponseJsonAdapter;->postMessage:Ljava/util/Map;

    .line 172
    iput-object p5, p0, Lo/PayCallResponseJsonAdapter;->extraCallback:Lo/PaymentRequest;

    .line 173
    iput-object p8, p0, Lo/PayCallResponseJsonAdapter;->onMessageChannelReady:Lo/p$a;

    .line 174
    iput-object p9, p0, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/ViewContainerJsonAdapter;

    .line 175
    iput-object p10, p0, Lo/PayCallResponseJsonAdapter;->onTransact:Lo/Account$extraCallback;

    .line 176
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/PayCallResponseJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 177
    new-instance p1, Lo/ListInstrumentJsonAdapter$extraCallback;

    invoke-direct {p1}, Lo/ListInstrumentJsonAdapter$extraCallback;-><init>()V

    iput-object p1, p0, Lo/PayCallResponseJsonAdapter;->onRelationshipValidationResult:Lo/ListInstrumentJsonAdapter$extraCallback;

    const/4 p1, 0x0

    new-array p2, p1, [I

    .line 178
    iput-object p2, p0, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl:[I

    const/4 p2, -0x1

    .line 179
    iput p2, p0, Lo/PayCallResponseJsonAdapter;->updateVisuals:I

    .line 180
    iput p2, p0, Lo/PayCallResponseJsonAdapter;->IPostMessageService:I

    new-array p2, p1, [Lo/CardBinResponse;

    .line 181
    iput-object p2, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    new-array p2, p1, [Z

    .line 182
    iput-object p2, p0, Lo/PayCallResponseJsonAdapter;->RemoteActionCompatParcelizer:[Z

    new-array p1, p1, [Z

    .line 183
    iput-object p1, p0, Lo/PayCallResponseJsonAdapter;->write:[Z

    .line 184
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    .line 185
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/PayCallResponseJsonAdapter;->ICustomTabsService:Ljava/util/List;

    .line 186
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/PayCallResponseJsonAdapter;->warmup:Ljava/util/ArrayList;

    .line 187
    new-instance p1, Lo/PaymentConfigJsonAdapter;

    invoke-direct {p1, p0}, Lo/PaymentConfigJsonAdapter;-><init>(Lo/PayCallResponseJsonAdapter;)V

    iput-object p1, p0, Lo/PayCallResponseJsonAdapter;->newSession:Ljava/lang/Runnable;

    .line 188
    new-instance p1, Lo/PaymentOrderJsonAdapter;

    invoke-direct {p1, p0}, Lo/PaymentOrderJsonAdapter;-><init>(Lo/PayCallResponseJsonAdapter;)V

    iput-object p1, p0, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Runnable;

    .line 189
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lo/PayCallResponseJsonAdapter;->getInterfaceDescriptor:Landroid/os/Handler;

    .line 190
    iput-wide p6, p0, Lo/PayCallResponseJsonAdapter;->read:J

    .line 191
    iput-wide p6, p0, Lo/PayCallResponseJsonAdapter;->AudioAttributesCompatParcelizer:J

    return-void
.end method

.method private static ICustomTabsCallback(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private ICustomTabsCallback$Stub$Proxy()V
    .locals 6

    .line 903
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 904
    iget-boolean v5, p0, Lo/PayCallResponseJsonAdapter;->IconCompatParcelizer:Z

    invoke-virtual {v4, v5}, Lo/CardBinResponse;->onPostMessage(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 906
    :cond_0
    iput-boolean v2, p0, Lo/PayCallResponseJsonAdapter;->IconCompatParcelizer:Z

    return-void
.end method

.method private ICustomTabsService()Lo/OrderStatusResponseJsonAdapter;
    .locals 2

    .line 1052
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/OrderStatusResponseJsonAdapter;

    return-object v0
.end method

.method private static extraCallback(II)Lo/Event$Category;
    .locals 2

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unmapped track with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    new-instance p0, Lo/Event$Category;

    invoke-direct {p0}, Lo/Event$Category;-><init>()V

    return-object p0
.end method

.method private static extraCallback(Lo/p$a;Lo/p$a;Z)Lo/p$a;
    .locals 13

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 1118
    iget p2, p0, Lo/p$a;->extraCallback:I

    move v7, p2

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    .line 1119
    :goto_0
    iget p2, p0, Lo/p$a;->ICustomTabsService$Stub:I

    if-eq p2, v0, :cond_2

    iget p2, p0, Lo/p$a;->ICustomTabsService$Stub:I

    goto :goto_1

    :cond_2
    iget p2, p1, Lo/p$a;->ICustomTabsService$Stub:I

    :goto_1
    move v10, p2

    .line 1123
    iget-object p2, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-static {p2}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onRelationshipValidationResult(Ljava/lang/String;)I

    move-result p2

    .line 1124
    iget-object v0, p0, Lo/p$a;->asBinder:Ljava/lang/String;

    invoke-static {v0, p2}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1125
    invoke-static {v5}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1127
    iget-object p2, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    :cond_3
    move-object v4, p2

    .line 1129
    iget-object v2, p0, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    iget-object v6, p0, Lo/p$a;->asInterface:Lo/callAPI;

    iget v8, p0, Lo/p$a;->getInterfaceDescriptor:I

    iget v9, p0, Lo/p$a;->newSession:I

    iget v11, p0, Lo/p$a;->onMessageChannelReady:I

    iget-object v12, p0, Lo/p$a;->cancel:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v12}, Lo/p$a;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/callAPI;IIIIILjava/lang/String;)Lo/p$a;

    move-result-object p0

    return-object p0
.end method

.method private extraCallback([Lo/CardInstrumentJsonAdapter;)V
    .locals 4

    .line 883
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->warmup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 884
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 886
    iget-object v3, p0, Lo/PayCallResponseJsonAdapter;->warmup:Ljava/util/ArrayList;

    check-cast v2, Lo/PayCallRequest;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private extraCallback(Lo/OrderStatusResponseJsonAdapter;)Z
    .locals 4

    .line 892
    iget p1, p1, Lo/OrderStatusResponseJsonAdapter;->onTransact:I

    .line 893
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 895
    iget-object v3, p0, Lo/PayCallResponseJsonAdapter;->write:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lo/CardBinResponse;->ICustomTabsCallback()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private getInterfaceDescriptor()V
    .locals 14

    .line 988
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length v0, v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, -0x1

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_5

    .line 990
    iget-object v9, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lo/CardBinResponse;->onPostMessage()Lo/p$a;

    move-result-object v9

    iget-object v9, v9, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 992
    invoke-static {v9}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 994
    :cond_0
    invoke-static {v9}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    .line 996
    :cond_1
    invoke-static {v9}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    goto :goto_1

    :cond_2
    const/4 v7, 0x6

    .line 1001
    :goto_1
    invoke-static {v7}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback(I)I

    move-result v8

    invoke-static {v5}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback(I)I

    move-result v9

    if-le v8, v9, :cond_3

    move v6, v4

    move v5, v7

    goto :goto_2

    :cond_3
    if-ne v7, v5, :cond_4

    if-eq v6, v2, :cond_4

    const/4 v6, -0x1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1012
    :cond_5
    iget-object v1, p0, Lo/PayCallResponseJsonAdapter;->onNavigationEvent:Lo/ListInstrumentJsonAdapter;

    invoke-virtual {v1}, Lo/ListInstrumentJsonAdapter;->onNavigationEvent()Lo/getJuspayUpi;

    move-result-object v1

    .line 1013
    iget v4, v1, Lo/getJuspayUpi;->ICustomTabsCallback:I

    .line 1016
    iput v2, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Stub:I

    .line 1017
    new-array v2, v0, [I

    iput-object v2, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy:[I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 1019
    iget-object v9, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy:[I

    aput v2, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1023
    :cond_6
    new-array v2, v0, [Lo/getJuspayUpi;

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v0, :cond_b

    .line 1025
    iget-object v10, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lo/CardBinResponse;->onPostMessage()Lo/p$a;

    move-result-object v10

    if-ne v9, v6, :cond_9

    .line 1027
    new-array v11, v4, [Lo/p$a;

    if-ne v4, v8, :cond_7

    .line 1029
    invoke-virtual {v1, v3}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v12

    invoke-virtual {v10, v12}, Lo/p$a;->ICustomTabsCallback(Lo/p$a;)Lo/p$a;

    move-result-object v10

    aput-object v10, v11, v3

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v4, :cond_8

    .line 1032
    invoke-virtual {v1, v12}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v13

    invoke-static {v13, v10, v8}, Lo/PayCallResponseJsonAdapter;->extraCallback(Lo/p$a;Lo/p$a;Z)Lo/p$a;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1035
    :cond_8
    :goto_6
    new-instance v10, Lo/getJuspayUpi;

    invoke-direct {v10, v11}, Lo/getJuspayUpi;-><init>([Lo/p$a;)V

    aput-object v10, v2, v9

    .line 1036
    iput v9, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Stub:I

    goto :goto_8

    :cond_9
    if-ne v5, v7, :cond_a

    .line 1038
    iget-object v11, v10, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 1040
    invoke-static {v11}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lo/PayCallResponseJsonAdapter;->onMessageChannelReady:Lo/p$a;

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    .line 1043
    :goto_7
    new-instance v12, Lo/getJuspayUpi;

    new-array v13, v8, [Lo/p$a;

    invoke-static {v11, v10, v3}, Lo/PayCallResponseJsonAdapter;->extraCallback(Lo/p$a;Lo/p$a;Z)Lo/p$a;

    move-result-object v10

    aput-object v10, v13, v3

    invoke-direct {v12, v13}, Lo/getJuspayUpi;-><init>([Lo/p$a;)V

    aput-object v12, v2, v9

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1046
    :cond_b
    new-instance v0, Lo/JuspaySessionToken;

    invoke-direct {v0, v2}, Lo/JuspaySessionToken;-><init>([Lo/getJuspayUpi;)V

    iput-object v0, p0, Lo/PayCallResponseJsonAdapter;->getDefaultImpl:Lo/JuspaySessionToken;

    .line 1047
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Default:Lo/JuspaySessionToken;

    if-nez v0, :cond_c

    const/4 v3, 0x1

    :cond_c
    invoke-static {v3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 1048
    sget-object v0, Lo/JuspaySessionToken;->onPostMessage:Lo/JuspaySessionToken;

    iput-object v0, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Default:Lo/JuspaySessionToken;

    return-void
.end method

.method private mayLaunchUrl()Z
    .locals 5

    .line 1056
    iget-wide v0, p0, Lo/PayCallResponseJsonAdapter;->AudioAttributesCompatParcelizer:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onMessageChannelReady(J)Z
    .locals 6

    .line 1066
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 1068
    iget-object v4, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    aget-object v4, v4, v2

    .line 1069
    invoke-virtual {v4}, Lo/CardBinResponse;->onRelationshipValidationResult()V

    .line 1070
    invoke-virtual {v4, p1, p2, v3, v1}, Lo/CardBinResponse;->ICustomTabsCallback(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 1076
    iget-object v3, p0, Lo/PayCallResponseJsonAdapter;->RemoteActionCompatParcelizer:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lo/PayCallResponseJsonAdapter;->setDefaultImpl:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private static onMessageChannelReady(Lo/p$a;Lo/p$a;)Z
    .locals 6

    .line 1148
    iget-object v0, p0, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 1149
    iget-object v1, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 1150
    invoke-static {v0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onRelationshipValidationResult(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    .line 1152
    invoke-static {v1}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onRelationshipValidationResult(Ljava/lang/String;)I

    move-result p0

    if-ne v2, p0, :cond_0

    return v3

    :cond_0
    return v4

    .line 1153
    :cond_1
    invoke-static {v0, v1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v4

    :cond_2
    const-string v1, "application/cea-608"

    .line 1156
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/cea-708"

    .line 1157
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v3

    .line 1158
    :cond_4
    :goto_0
    iget p0, p0, Lo/p$a;->INotificationSideChannel:I

    iget p1, p1, Lo/p$a;->INotificationSideChannel:I

    if-ne p0, p1, :cond_5

    return v3

    :cond_5
    return v4
.end method

.method private static onNavigationEvent(Lo/component3;)Z
    .locals 0

    .line 1144
    instance-of p0, p0, Lo/OrderStatusResponseJsonAdapter;

    return p0
.end method

.method private warmup()V
    .locals 6

    .line 936
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->getDefaultImpl:Lo/JuspaySessionToken;

    iget v0, v0, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    .line 937
    new-array v1, v0, [I

    iput-object v1, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy:[I

    const/4 v2, -0x1

    .line 938
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const/4 v3, 0x0

    .line 940
    :goto_1
    iget-object v4, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 941
    aget-object v4, v4, v3

    .line 942
    invoke-virtual {v4}, Lo/CardBinResponse;->onPostMessage()Lo/p$a;

    move-result-object v4

    iget-object v5, p0, Lo/PayCallResponseJsonAdapter;->getDefaultImpl:Lo/JuspaySessionToken;

    invoke-virtual {v5, v2}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v5

    invoke-virtual {v5, v1}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v5

    invoke-static {v4, v5}, Lo/PayCallResponseJsonAdapter;->onMessageChannelReady(Lo/p$a;Lo/p$a;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 943
    iget-object v4, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy:[I

    aput v3, v4, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 948
    :cond_2
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->warmup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PayCallRequest;

    .line 949
    invoke-virtual {v1}, Lo/PayCallRequest;->onPostMessage()V

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 567
    invoke-direct {p0}, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-wide v0, p0, Lo/PayCallResponseJsonAdapter;->AudioAttributesCompatParcelizer:J

    return-wide v0

    .line 570
    :cond_0
    iget-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->disconnect:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_1
    invoke-direct {p0}, Lo/PayCallResponseJsonAdapter;->ICustomTabsService()Lo/OrderStatusResponseJsonAdapter;

    move-result-object v0

    iget-wide v0, v0, Lo/component3;->asBinder:J

    return-wide v0
.end method

.method public final ICustomTabsCallback(J)V
    .locals 4

    .line 874
    iput-wide p1, p0, Lo/PayCallResponseJsonAdapter;->MediaBrowserCompat:J

    .line 875
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 876
    invoke-virtual {v3, p1, p2}, Lo/CardBinResponse;->onNavigationEvent(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Lo/component3;JJZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 669
    iget-object v2, v0, Lo/PayCallResponseJsonAdapter;->onTransact:Lo/Account$extraCallback;

    iget-object v3, v1, Lo/component3;->ICustomTabsCallback:Lo/PaymentRequestJsonAdapter;

    .line 671
    invoke-virtual/range {p1 .. p1}, Lo/component3;->extraCallback()Landroid/net/Uri;

    move-result-object v4

    .line 672
    invoke-virtual/range {p1 .. p1}, Lo/component3;->onMessageChannelReady()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lo/component3;->onPostMessage:I

    iget v7, v0, Lo/PayCallResponseJsonAdapter;->onPostMessage:I

    iget-object v8, v1, Lo/component3;->extraCallback:Lo/p$a;

    iget v9, v1, Lo/component3;->onNavigationEvent:I

    iget-object v10, v1, Lo/component3;->onMessageChannelReady:Ljava/lang/Object;

    iget-wide v11, v1, Lo/component3;->asInterface:J

    iget-wide v13, v1, Lo/component3;->asBinder:J

    .line 682
    invoke-virtual/range {p1 .. p1}, Lo/component3;->onNavigationEvent()J

    move-result-wide v19

    .line 669
    invoke-virtual/range {v2 .. v20}, Lo/Account$extraCallback;->onPostMessage(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IILo/p$a;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_0

    .line 684
    invoke-direct/range {p0 .. p0}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy()V

    .line 685
    iget v1, v0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel:I

    if-lez v1, :cond_0

    .line 686
    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback:Lo/PayCallResponseJsonAdapter$onMessageChannelReady;

    invoke-interface {v1, v0}, Lo/PayCallResponseJsonAdapter$onMessageChannelReady;->onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(JZ)Z
    .locals 3

    .line 409
    iput-wide p1, p0, Lo/PayCallResponseJsonAdapter;->read:J

    .line 410
    invoke-direct {p0}, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 412
    iput-wide p1, p0, Lo/PayCallResponseJsonAdapter;->AudioAttributesCompatParcelizer:J

    return v1

    .line 417
    :cond_0
    iget-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->IPostMessageService$Stub:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    invoke-direct {p0, p1, p2}, Lo/PayCallResponseJsonAdapter;->onMessageChannelReady(J)Z

    move-result p3

    if-eqz p3, :cond_1

    return v2

    .line 422
    :cond_1
    iput-wide p1, p0, Lo/PayCallResponseJsonAdapter;->AudioAttributesCompatParcelizer:J

    .line 423
    iput-boolean v2, p0, Lo/PayCallResponseJsonAdapter;->disconnect:Z

    .line 424
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 425
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 426
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->ICustomTabsCallback()V

    goto :goto_0

    .line 428
    :cond_2
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->extraCallback()V

    .line 429
    invoke-direct {p0}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy()V

    :goto_0
    return v1
.end method

.method public final ICustomTabsCallback(Landroid/net/Uri;J)Z
    .locals 1

    .line 458
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->onNavigationEvent:Lo/ListInstrumentJsonAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lo/ListInstrumentJsonAdapter;->onPostMessage(Landroid/net/Uri;J)Z

    move-result p1

    return p1
.end method

.method public final ICustomTabsCallback([Lo/InstrumentView;[Z[Lo/CardInstrumentJsonAdapter;[ZJZ)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    .line 271
    iget-boolean v3, v0, Lo/PayCallResponseJsonAdapter;->notify:Z

    invoke-static {v3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 272
    iget v3, v0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel:I

    const/4 v14, 0x0

    const/4 v4, 0x0

    .line 274
    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-ge v4, v5, :cond_2

    .line 275
    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    .line 276
    :cond_0
    iget v5, v0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel:I

    sub-int/2addr v5, v15

    iput v5, v0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel:I

    .line 277
    aget-object v5, v2, v4

    check-cast v5, Lo/PayCallRequest;

    invoke-virtual {v5}, Lo/PayCallRequest;->ICustomTabsCallback()V

    .line 278
    aput-object v6, v2, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez p7, :cond_5

    .line 284
    iget-boolean v4, v0, Lo/PayCallResponseJsonAdapter;->connect:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-wide v3, v0, Lo/PayCallResponseJsonAdapter;->read:J

    cmp-long v5, v12, v3

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    .line 291
    :goto_2
    iget-object v4, v0, Lo/PayCallResponseJsonAdapter;->onNavigationEvent:Lo/ListInstrumentJsonAdapter;

    invoke-virtual {v4}, Lo/ListInstrumentJsonAdapter;->extraCallback()Lo/InstrumentView;

    move-result-object v4

    move/from16 v16, v3

    move-object v11, v4

    const/4 v3, 0x0

    .line 294
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_a

    .line 295
    aget-object v5, v1, v3

    if-eqz v5, :cond_9

    .line 299
    iget-object v7, v0, Lo/PayCallResponseJsonAdapter;->getDefaultImpl:Lo/JuspaySessionToken;

    invoke-interface {v5}, Lo/InstrumentView;->asBinder()Lo/getJuspayUpi;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo/JuspaySessionToken;->onMessageChannelReady(Lo/getJuspayUpi;)I

    move-result v7

    .line 300
    iget v8, v0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Stub:I

    if-ne v7, v8, :cond_6

    .line 302
    iget-object v8, v0, Lo/PayCallResponseJsonAdapter;->onNavigationEvent:Lo/ListInstrumentJsonAdapter;

    invoke-virtual {v8, v5}, Lo/ListInstrumentJsonAdapter;->onPostMessage(Lo/InstrumentView;)V

    move-object v11, v5

    .line 304
    :cond_6
    aget-object v5, v2, v3

    if-nez v5, :cond_9

    .line 305
    iget v5, v0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel:I

    add-int/2addr v5, v15

    iput v5, v0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel:I

    .line 306
    new-instance v5, Lo/PayCallRequest;

    invoke-direct {v5, v0, v7}, Lo/PayCallRequest;-><init>(Lo/PayCallResponseJsonAdapter;I)V

    aput-object v5, v2, v3

    .line 307
    aput-boolean v15, p4, v3

    .line 308
    iget-object v5, v0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy:[I

    if-eqz v5, :cond_7

    .line 309
    aget-object v5, v2, v3

    check-cast v5, Lo/PayCallRequest;

    invoke-virtual {v5}, Lo/PayCallRequest;->onPostMessage()V

    .line 312
    :cond_7
    iget-boolean v5, v0, Lo/PayCallResponseJsonAdapter;->IPostMessageService$Stub:Z

    if-eqz v5, :cond_9

    if-nez v16, :cond_9

    .line 313
    iget-object v5, v0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    iget-object v8, v0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy:[I

    aget v7, v8, v7

    aget-object v5, v5, v7

    .line 314
    invoke-virtual {v5}, Lo/CardBinResponse;->onRelationshipValidationResult()V

    .line 319
    invoke-virtual {v5, v12, v13, v15, v15}, Lo/CardBinResponse;->ICustomTabsCallback(JZZ)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    .line 320
    invoke-virtual {v5}, Lo/CardBinResponse;->onMessageChannelReady()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    move/from16 v16, v5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 325
    :cond_a
    iget v1, v0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel:I

    if-nez v1, :cond_d

    .line 326
    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->onNavigationEvent:Lo/ListInstrumentJsonAdapter;

    invoke-virtual {v1}, Lo/ListInstrumentJsonAdapter;->onMessageChannelReady()V

    .line 327
    iput-object v6, v0, Lo/PayCallResponseJsonAdapter;->IPostMessageService$Stub$Proxy:Lo/p$a;

    .line 328
    iput-boolean v15, v0, Lo/PayCallResponseJsonAdapter;->IconCompatParcelizer:Z

    .line 329
    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 330
    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 331
    iget-boolean v1, v0, Lo/PayCallResponseJsonAdapter;->IPostMessageService$Stub:Z

    if-eqz v1, :cond_b

    .line 333
    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length v3, v1

    :goto_5
    if-ge v14, v3, :cond_b

    aget-object v4, v1, v14

    .line 334
    invoke-virtual {v4}, Lo/CardBinResponse;->asInterface()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 337
    :cond_b
    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->ICustomTabsCallback()V

    goto/16 :goto_a

    .line 339
    :cond_c
    invoke-direct/range {p0 .. p0}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy()V

    goto/16 :goto_a

    .line 342
    :cond_d
    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 343
    invoke-static {v11, v4}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 347
    iget-boolean v1, v0, Lo/PayCallResponseJsonAdapter;->connect:Z

    if-nez v1, :cond_10

    const-wide/16 v3, 0x0

    cmp-long v1, v12, v3

    if-gez v1, :cond_e

    neg-long v3, v12

    :cond_e
    move-wide v6, v3

    .line 349
    invoke-direct/range {p0 .. p0}, Lo/PayCallResponseJsonAdapter;->ICustomTabsService()Lo/OrderStatusResponseJsonAdapter;

    move-result-object v1

    .line 350
    iget-object v3, v0, Lo/PayCallResponseJsonAdapter;->onNavigationEvent:Lo/ListInstrumentJsonAdapter;

    .line 351
    invoke-virtual {v3, v1, v12, v13}, Lo/ListInstrumentJsonAdapter;->onNavigationEvent(Lo/OrderStatusResponseJsonAdapter;J)[Lo/component2;

    move-result-object v17

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 352
    iget-object v10, v0, Lo/PayCallResponseJsonAdapter;->ICustomTabsService:Ljava/util/List;

    move-object v3, v11

    move-wide/from16 v4, p5

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    invoke-interface/range {v3 .. v11}, Lo/InstrumentView;->extraCallback(JJJLjava/util/List;[Lo/component2;)V

    .line 358
    iget-object v3, v0, Lo/PayCallResponseJsonAdapter;->onNavigationEvent:Lo/ListInstrumentJsonAdapter;

    invoke-virtual {v3}, Lo/ListInstrumentJsonAdapter;->onNavigationEvent()Lo/getJuspayUpi;

    move-result-object v3

    iget-object v1, v1, Lo/component3;->extraCallback:Lo/p$a;

    invoke-virtual {v3, v1}, Lo/getJuspayUpi;->onMessageChannelReady(Lo/p$a;)I

    move-result v1

    .line 359
    invoke-interface/range {v18 .. v18}, Lo/InstrumentView;->onTransact()I

    move-result v3

    if-eq v3, v1, :cond_f

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_11

    .line 371
    iput-boolean v15, v0, Lo/PayCallResponseJsonAdapter;->IconCompatParcelizer:Z

    const/4 v1, 0x1

    const/16 v16, 0x1

    goto :goto_8

    :cond_11
    move/from16 v1, p7

    :goto_8
    if-eqz v16, :cond_13

    .line 375
    invoke-virtual {v0, v12, v13, v1}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback(JZ)Z

    .line 377
    :goto_9
    array-length v1, v2

    if-ge v14, v1, :cond_13

    .line 378
    aget-object v1, v2, v14

    if-eqz v1, :cond_12

    .line 379
    aput-boolean v15, p4, v14

    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 385
    :cond_13
    :goto_a
    invoke-direct {v0, v2}, Lo/PayCallResponseJsonAdapter;->extraCallback([Lo/CardInstrumentJsonAdapter;)V

    .line 386
    iput-boolean v15, v0, Lo/PayCallResponseJsonAdapter;->connect:Z

    return v16
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->asInterface()V

    .line 469
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->onNavigationEvent:Lo/ListInstrumentJsonAdapter;

    invoke-virtual {v0}, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback()V

    return-void
.end method

.method public final asBinder()Lo/JuspaySessionToken;
    .locals 1

    .line 224
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->getDefaultImpl:Lo/JuspaySessionToken;

    return-object v0
.end method

.method public final asInterface()V
    .locals 0

    .line 450
    invoke-direct {p0}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy()V

    return-void
.end method

.method public final extraCallback()J
    .locals 7

    .line 543
    iget-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->disconnect:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 545
    :cond_0
    invoke-direct {p0}, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-wide v0, p0, Lo/PayCallResponseJsonAdapter;->AudioAttributesCompatParcelizer:J

    return-wide v0

    .line 548
    :cond_1
    iget-wide v0, p0, Lo/PayCallResponseJsonAdapter;->read:J

    .line 549
    invoke-direct {p0}, Lo/PayCallResponseJsonAdapter;->ICustomTabsService()Lo/OrderStatusResponseJsonAdapter;

    move-result-object v2

    .line 550
    invoke-virtual {v2}, Lo/OrderStatusResponseJsonAdapter;->asBinder()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    .line 551
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/OrderStatusResponseJsonAdapter;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 553
    iget-wide v2, v2, Lo/component3;->asBinder:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 555
    :cond_4
    iget-boolean v2, p0, Lo/PayCallResponseJsonAdapter;->IPostMessageService$Stub:Z

    if-eqz v2, :cond_5

    .line 556
    iget-object v2, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 558
    invoke-virtual {v5}, Lo/CardBinResponse;->onTransact()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public final extraCallback(JZ)V
    .locals 4

    .line 391
    iget-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->IPostMessageService$Stub:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 394
    :cond_0
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 396
    iget-object v2, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    aget-object v2, v2, v1

    iget-object v3, p0, Lo/PayCallResponseJsonAdapter;->write:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lo/CardBinResponse;->onNavigationEvent(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final extraCallback(J)Z
    .locals 21

    move-object/from16 v0, p0

    .line 576
    iget-boolean v1, v0, Lo/PayCallResponseJsonAdapter;->disconnect:Z

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->onPostMessage()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->onNavigationEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 582
    :cond_0
    invoke-direct/range {p0 .. p0}, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 584
    iget-wide v3, v0, Lo/PayCallResponseJsonAdapter;->AudioAttributesCompatParcelizer:J

    :goto_0
    move-object v10, v1

    move-wide v8, v3

    goto :goto_1

    .line 586
    :cond_1
    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->ICustomTabsService:Ljava/util/List;

    .line 587
    invoke-direct/range {p0 .. p0}, Lo/PayCallResponseJsonAdapter;->ICustomTabsService()Lo/OrderStatusResponseJsonAdapter;

    move-result-object v3

    .line 589
    invoke-virtual {v3}, Lo/OrderStatusResponseJsonAdapter;->asBinder()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v3, v3, Lo/component3;->asBinder:J

    goto :goto_0

    :cond_2
    iget-wide v4, v0, Lo/PayCallResponseJsonAdapter;->read:J

    iget-wide v6, v3, Lo/component3;->asInterface:J

    .line 591
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_0

    .line 593
    :goto_1
    iget-object v5, v0, Lo/PayCallResponseJsonAdapter;->onNavigationEvent:Lo/ListInstrumentJsonAdapter;

    iget-object v11, v0, Lo/PayCallResponseJsonAdapter;->onRelationshipValidationResult:Lo/ListInstrumentJsonAdapter$extraCallback;

    move-wide/from16 v6, p1

    invoke-virtual/range {v5 .. v11}, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback(JJLjava/util/List;Lo/ListInstrumentJsonAdapter$extraCallback;)V

    .line 594
    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->onRelationshipValidationResult:Lo/ListInstrumentJsonAdapter$extraCallback;

    iget-boolean v1, v1, Lo/ListInstrumentJsonAdapter$extraCallback;->onMessageChannelReady:Z

    .line 595
    iget-object v3, v0, Lo/PayCallResponseJsonAdapter;->onRelationshipValidationResult:Lo/ListInstrumentJsonAdapter$extraCallback;

    iget-object v3, v3, Lo/ListInstrumentJsonAdapter$extraCallback;->extraCallback:Lo/component3;

    .line 596
    iget-object v4, v0, Lo/PayCallResponseJsonAdapter;->onRelationshipValidationResult:Lo/ListInstrumentJsonAdapter$extraCallback;

    iget-object v4, v4, Lo/ListInstrumentJsonAdapter$extraCallback;->onNavigationEvent:Landroid/net/Uri;

    .line 597
    iget-object v5, v0, Lo/PayCallResponseJsonAdapter;->onRelationshipValidationResult:Lo/ListInstrumentJsonAdapter$extraCallback;

    invoke-virtual {v5}, Lo/ListInstrumentJsonAdapter$extraCallback;->onNavigationEvent()V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    .line 600
    iput-wide v5, v0, Lo/PayCallResponseJsonAdapter;->AudioAttributesCompatParcelizer:J

    .line 601
    iput-boolean v7, v0, Lo/PayCallResponseJsonAdapter;->disconnect:Z

    return v7

    :cond_3
    if-nez v3, :cond_5

    if-eqz v4, :cond_4

    .line 607
    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback:Lo/PayCallResponseJsonAdapter$onMessageChannelReady;

    invoke-interface {v1, v4}, Lo/PayCallResponseJsonAdapter$onMessageChannelReady;->onMessageChannelReady(Landroid/net/Uri;)V

    :cond_4
    return v2

    .line 612
    :cond_5
    invoke-static {v3}, Lo/PayCallResponseJsonAdapter;->onNavigationEvent(Lo/component3;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 613
    iput-wide v5, v0, Lo/PayCallResponseJsonAdapter;->AudioAttributesCompatParcelizer:J

    .line 614
    move-object v1, v3

    check-cast v1, Lo/OrderStatusResponseJsonAdapter;

    .line 615
    invoke-virtual {v1, v0}, Lo/OrderStatusResponseJsonAdapter;->extraCallback(Lo/PayCallResponseJsonAdapter;)V

    .line 616
    iget-object v2, v0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v1, v1, Lo/component3;->extraCallback:Lo/p$a;

    iput-object v1, v0, Lo/PayCallResponseJsonAdapter;->cancelAll:Lo/p$a;

    .line 619
    :cond_6
    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v2, v0, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/ViewContainerJsonAdapter;

    iget v4, v3, Lo/component3;->onPostMessage:I

    .line 621
    invoke-interface {v2, v4}, Lo/ViewContainerJsonAdapter;->onNavigationEvent(I)I

    move-result v2

    .line 620
    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;I)J

    move-result-wide v19

    .line 622
    iget-object v8, v0, Lo/PayCallResponseJsonAdapter;->onTransact:Lo/Account$extraCallback;

    iget-object v9, v3, Lo/component3;->ICustomTabsCallback:Lo/PaymentRequestJsonAdapter;

    iget v10, v3, Lo/component3;->onPostMessage:I

    iget v11, v0, Lo/PayCallResponseJsonAdapter;->onPostMessage:I

    iget-object v12, v3, Lo/component3;->extraCallback:Lo/p$a;

    iget v13, v3, Lo/component3;->onNavigationEvent:I

    iget-object v14, v3, Lo/component3;->onMessageChannelReady:Ljava/lang/Object;

    iget-wide v1, v3, Lo/component3;->asInterface:J

    iget-wide v3, v3, Lo/component3;->asBinder:J

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-virtual/range {v8 .. v20}, Lo/Account$extraCallback;->ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;IILo/p$a;ILjava/lang/Object;JJJ)V

    return v7

    :cond_7
    :goto_2
    return v2
.end method

.method final newSession()V
    .locals 4

    .line 915
    iget-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->cancel:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy:[I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->IPostMessageService$Stub:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 918
    :cond_0
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 919
    invoke-virtual {v3}, Lo/CardBinResponse;->onPostMessage()Lo/p$a;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 923
    :cond_2
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->getDefaultImpl:Lo/JuspaySessionToken;

    if-eqz v0, :cond_3

    .line 926
    invoke-direct {p0}, Lo/PayCallResponseJsonAdapter;->warmup()V

    return-void

    .line 929
    :cond_3
    invoke-direct {p0}, Lo/PayCallResponseJsonAdapter;->getInterfaceDescriptor()V

    const/4 v0, 0x1

    .line 930
    iput-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->notify:Z

    .line 931
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback:Lo/PayCallResponseJsonAdapter$onMessageChannelReady;

    invoke-interface {v0}, Lo/PayCallResponseJsonAdapter$onMessageChannelReady;->asBinder()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 195
    iget-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->notify:Z

    if-nez v0, :cond_0

    .line 196
    iget-wide v0, p0, Lo/PayCallResponseJsonAdapter;->read:J

    invoke-virtual {p0, v0, v1}, Lo/PayCallResponseJsonAdapter;->extraCallback(J)Z

    :cond_0
    return-void
.end method

.method public final synthetic onMessageChannelReady(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJZ)V
    .locals 7

    .line 61
    move-object v1, p1

    check-cast v1, Lo/component3;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback(Lo/component3;JJZ)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/p$a;)V
    .locals 1

    .line 868
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->getInterfaceDescriptor:Landroid/os/Handler;

    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->newSession:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onMessageChannelReady(I)Z
    .locals 1

    .line 464
    iget-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->disconnect:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lo/CardBinResponse;->onNavigationEvent()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onNavigationEvent(I)I
    .locals 4

    .line 232
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy:[I

    aget v0, v0, p1

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 234
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Default:Lo/JuspaySessionToken;

    iget-object v3, p0, Lo/PayCallResponseJsonAdapter;->getDefaultImpl:Lo/JuspaySessionToken;

    invoke-virtual {v3, p1}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/JuspaySessionToken;->onMessageChannelReady(Lo/getJuspayUpi;)I

    move-result p1

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    const/4 p1, -0x3

    return p1

    .line 238
    :cond_1
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->write:[Z

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    .line 242
    aput-boolean v1, p1, v0

    return v0
.end method

.method public final synthetic onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;
    .locals 8

    .line 61
    move-object v1, p1

    check-cast v1, Lo/component3;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lo/PayCallResponseJsonAdapter;->onPostMessage(Lo/component3;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public final onNavigationEvent(J)V
    .locals 0

    return-void
.end method

.method public final synthetic onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJ)V
    .locals 6

    .line 61
    move-object v1, p1

    check-cast v1, Lo/component3;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/PayCallResponseJsonAdapter;->onPostMessage(Lo/component3;JJ)V

    return-void
.end method

.method public final onNavigationEvent(Lo/JuspaySessionToken;ILo/JuspaySessionToken;)V
    .locals 1

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->notify:Z

    .line 213
    iput-object p1, p0, Lo/PayCallResponseJsonAdapter;->getDefaultImpl:Lo/JuspaySessionToken;

    .line 214
    iput-object p3, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Default:Lo/JuspaySessionToken;

    .line 215
    iput p2, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Stub:I

    .line 216
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->getInterfaceDescriptor:Landroid/os/Handler;

    iget-object p2, p0, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback:Lo/PayCallResponseJsonAdapter$onMessageChannelReady;

    new-instance p3, Lo/PaymentOrder;

    invoke-direct {p3, p2}, Lo/PaymentOrder;-><init>(Lo/PayCallResponseJsonAdapter$onMessageChannelReady;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onNavigationEvent(Lo/UpiSdkCallback;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(IJ)I
    .locals 4

    .line 526
    invoke-direct {p0}, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 530
    :cond_0
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    aget-object p1, v0, p1

    .line 531
    iget-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->disconnect:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/CardBinResponse;->onTransact()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 532
    invoke-virtual {p1}, Lo/CardBinResponse;->ICustomTabsCallback$Stub()I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    .line 534
    invoke-virtual {p1, p2, p3, v0, v0}, Lo/CardBinResponse;->ICustomTabsCallback(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method public final onPostMessage(ILo/q;Lo/setReferrerCustomerId;Z)I
    .locals 10

    .line 474
    invoke-direct {p0}, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 479
    :cond_0
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 481
    :goto_0
    iget-object v2, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    .line 482
    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/OrderStatusResponseJsonAdapter;

    invoke-direct {p0, v2}, Lo/PayCallResponseJsonAdapter;->extraCallback(Lo/OrderStatusResponseJsonAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :cond_1
    iget-object v2, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-static {v2, v1, v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Ljava/util/List;II)V

    .line 486
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/OrderStatusResponseJsonAdapter;

    .line 487
    iget-object v9, v0, Lo/component3;->extraCallback:Lo/p$a;

    .line 488
    iget-object v2, p0, Lo/PayCallResponseJsonAdapter;->IPostMessageService$Stub$Proxy:Lo/p$a;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 489
    iget-object v2, p0, Lo/PayCallResponseJsonAdapter;->onTransact:Lo/Account$extraCallback;

    iget v3, p0, Lo/PayCallResponseJsonAdapter;->onPostMessage:I

    iget v5, v0, Lo/component3;->onNavigationEvent:I

    iget-object v6, v0, Lo/component3;->onMessageChannelReady:Ljava/lang/Object;

    iget-wide v7, v0, Lo/component3;->asInterface:J

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Lo/Account$extraCallback;->onPostMessage(ILo/p$a;ILjava/lang/Object;J)V

    .line 493
    :cond_2
    iput-object v9, p0, Lo/PayCallResponseJsonAdapter;->IPostMessageService$Stub$Proxy:Lo/p$a;

    .line 496
    :cond_3
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Lo/PayCallResponseJsonAdapter;->disconnect:Z

    iget-wide v7, p0, Lo/PayCallResponseJsonAdapter;->read:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 497
    invoke-virtual/range {v2 .. v8}, Lo/CardBinResponse;->extraCallback(Lo/q;Lo/setReferrerCustomerId;ZZJ)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_8

    .line 500
    iget-object p4, p2, Lo/q;->onMessageChannelReady:Lo/p$a;

    .line 501
    iget v0, p0, Lo/PayCallResponseJsonAdapter;->ICustomTabsService$Stub:I

    if-ne p1, v0, :cond_6

    .line 503
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lo/CardBinResponse;->ICustomTabsCallback()I

    move-result p1

    .line 505
    :goto_1
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/OrderStatusResponseJsonAdapter;

    iget v0, v0, Lo/OrderStatusResponseJsonAdapter;->onTransact:I

    if-eq v0, p1, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 508
    :cond_4
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    .line 509
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ge v1, p1, :cond_5

    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    .line 510
    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/OrderStatusResponseJsonAdapter;

    iget-object p1, p1, Lo/component3;->extraCallback:Lo/p$a;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->cancelAll:Lo/p$a;

    .line 512
    :goto_2
    invoke-virtual {p4, p1}, Lo/p$a;->ICustomTabsCallback(Lo/p$a;)Lo/p$a;

    move-result-object p4

    .line 514
    :cond_6
    iget-object p1, p4, Lo/p$a;->warmup:Lo/generateLink;

    if-eqz p1, :cond_7

    .line 515
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->postMessage:Ljava/util/Map;

    iget-object v0, p4, Lo/p$a;->warmup:Lo/generateLink;

    iget-object v0, v0, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/generateLink;

    if-eqz p1, :cond_7

    .line 517
    invoke-virtual {p4, p1}, Lo/p$a;->onMessageChannelReady(Lo/generateLink;)Lo/p$a;

    move-result-object p4

    .line 520
    :cond_7
    iput-object p4, p2, Lo/q;->onMessageChannelReady:Lo/p$a;

    :cond_8
    return p3
.end method

.method public final onPostMessage(Lo/component3;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 698
    invoke-virtual/range {p1 .. p1}, Lo/component3;->onNavigationEvent()J

    move-result-wide v18

    .line 699
    invoke-static/range {p1 .. p1}, Lo/PayCallResponseJsonAdapter;->onNavigationEvent(Lo/component3;)Z

    move-result v2

    .line 703
    iget-object v3, v0, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/ViewContainerJsonAdapter;

    iget v4, v1, Lo/component3;->onPostMessage:I

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 704
    invoke-interface/range {v3 .. v8}, Lo/ViewContainerJsonAdapter;->extraCallback(IJLjava/io/IOException;I)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-eqz v8, :cond_0

    .line 707
    iget-object v8, v0, Lo/PayCallResponseJsonAdapter;->onNavigationEvent:Lo/ListInstrumentJsonAdapter;

    invoke-virtual {v8, v1, v3, v4}, Lo/ListInstrumentJsonAdapter;->onPostMessage(Lo/component3;J)Z

    move-result v3

    move/from16 v22, v3

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz v22, :cond_3

    if-eqz v2, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-nez v2, :cond_2

    .line 712
    iget-object v2, v0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/OrderStatusResponseJsonAdapter;

    if-ne v2, v1, :cond_1

    const/4 v7, 0x1

    .line 713
    :cond_1
    invoke-static {v7}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 714
    iget-object v2, v0, Lo/PayCallResponseJsonAdapter;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 715
    iget-wide v4, v0, Lo/PayCallResponseJsonAdapter;->read:J

    iput-wide v4, v0, Lo/PayCallResponseJsonAdapter;->AudioAttributesCompatParcelizer:J

    .line 718
    :cond_2
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->onPostMessage:Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    goto :goto_1

    .line 720
    :cond_3
    iget-object v8, v0, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/ViewContainerJsonAdapter;

    iget v9, v1, Lo/component3;->onPostMessage:I

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    .line 721
    invoke-interface/range {v8 .. v13}, Lo/ViewContainerJsonAdapter;->onMessageChannelReady(IJLjava/io/IOException;I)J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-eqz v2, :cond_4

    .line 725
    invoke-static {v7, v8, v9}, Lcom/google/android/exoplayer2/upstream/Loader;->ICustomTabsCallback(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    move-result-object v2

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->onMessageChannelReady:Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    :goto_1
    move-object/from16 v23, v2

    .line 729
    iget-object v2, v0, Lo/PayCallResponseJsonAdapter;->onTransact:Lo/Account$extraCallback;

    iget-object v4, v1, Lo/component3;->ICustomTabsCallback:Lo/PaymentRequestJsonAdapter;

    .line 731
    invoke-virtual/range {p1 .. p1}, Lo/component3;->extraCallback()Landroid/net/Uri;

    move-result-object v5

    .line 732
    invoke-virtual/range {p1 .. p1}, Lo/component3;->onMessageChannelReady()Ljava/util/Map;

    move-result-object v6

    iget v7, v1, Lo/component3;->onPostMessage:I

    iget v8, v0, Lo/PayCallResponseJsonAdapter;->onPostMessage:I

    iget-object v9, v1, Lo/component3;->extraCallback:Lo/p$a;

    iget v10, v1, Lo/component3;->onNavigationEvent:I

    iget-object v11, v1, Lo/component3;->onMessageChannelReady:Ljava/lang/Object;

    iget-wide v12, v1, Lo/component3;->asInterface:J

    iget-wide v14, v1, Lo/component3;->asBinder:J

    .line 744
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;->extraCallback()Z

    move-result v1

    xor-int/lit8 v21, v1, 0x1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move v8, v10

    move-object v9, v11

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    .line 729
    invoke-virtual/range {v1 .. v21}, Lo/Account$extraCallback;->extraCallback(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IILo/p$a;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v22, :cond_6

    .line 747
    iget-boolean v1, v0, Lo/PayCallResponseJsonAdapter;->notify:Z

    if-nez v1, :cond_5

    .line 748
    iget-wide v1, v0, Lo/PayCallResponseJsonAdapter;->read:J

    invoke-virtual {v0, v1, v2}, Lo/PayCallResponseJsonAdapter;->extraCallback(J)Z

    goto :goto_2

    .line 750
    :cond_5
    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback:Lo/PayCallResponseJsonAdapter$onMessageChannelReady;

    invoke-interface {v1, v0}, Lo/PayCallResponseJsonAdapter$onMessageChannelReady;->onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V

    :cond_6
    :goto_2
    return-object v23
.end method

.method public final onPostMessage(II)Lo/CryptLib;
    .locals 8

    .line 787
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p2, v5, :cond_3

    .line 791
    iget v6, p0, Lo/PayCallResponseJsonAdapter;->updateVisuals:I

    if-eq v6, v3, :cond_2

    .line 792
    iget-boolean v1, p0, Lo/PayCallResponseJsonAdapter;->requestPostMessageChannel:Z

    if-eqz v1, :cond_1

    .line 793
    iget-object v1, p0, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_0

    aget-object p1, v0, v6

    return-object p1

    .line 795
    :cond_0
    invoke-static {p1, p2}, Lo/PayCallResponseJsonAdapter;->extraCallback(II)Lo/Event$Category;

    move-result-object p1

    return-object p1

    .line 797
    :cond_1
    iput-boolean v5, p0, Lo/PayCallResponseJsonAdapter;->requestPostMessageChannel:Z

    .line 798
    iget-object p2, p0, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl:[I

    aput p1, p2, v6

    .line 799
    aget-object p1, v0, v6

    return-object p1

    .line 800
    :cond_2
    iget-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->AudioAttributesImplApi21Parcelizer:Z

    if-eqz v0, :cond_a

    .line 801
    invoke-static {p1, p2}, Lo/PayCallResponseJsonAdapter;->extraCallback(II)Lo/Event$Category;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p2, v4, :cond_7

    .line 804
    iget v6, p0, Lo/PayCallResponseJsonAdapter;->IPostMessageService:I

    if-eq v6, v3, :cond_6

    .line 805
    iget-boolean v1, p0, Lo/PayCallResponseJsonAdapter;->validateRelationship:Z

    if-eqz v1, :cond_5

    .line 806
    iget-object v1, p0, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_4

    aget-object p1, v0, v6

    return-object p1

    .line 808
    :cond_4
    invoke-static {p1, p2}, Lo/PayCallResponseJsonAdapter;->extraCallback(II)Lo/Event$Category;

    move-result-object p1

    return-object p1

    .line 810
    :cond_5
    iput-boolean v5, p0, Lo/PayCallResponseJsonAdapter;->validateRelationship:Z

    .line 811
    iget-object p2, p0, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl:[I

    aput p1, p2, v6

    .line 812
    aget-object p1, v0, v6

    return-object p1

    .line 813
    :cond_6
    iget-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->AudioAttributesImplApi21Parcelizer:Z

    if-eqz v0, :cond_a

    .line 814
    invoke-static {p1, p2}, Lo/PayCallResponseJsonAdapter;->extraCallback(II)Lo/Event$Category;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_9

    .line 818
    iget-object v3, p0, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_8

    .line 819
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    aget-object p1, p1, v0

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    :cond_9
    iget-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->AudioAttributesImplApi21Parcelizer:Z

    if-eqz v0, :cond_a

    .line 823
    invoke-static {p1, p2}, Lo/PayCallResponseJsonAdapter;->extraCallback(II)Lo/Event$Category;

    move-result-object p1

    return-object p1

    .line 826
    :cond_a
    new-instance v0, Lo/PayCallResponseJsonAdapter$onNavigationEvent;

    iget-object v3, p0, Lo/PayCallResponseJsonAdapter;->extraCallback:Lo/PaymentRequest;

    invoke-direct {v0, v3}, Lo/PayCallResponseJsonAdapter$onNavigationEvent;-><init>(Lo/PaymentRequest;)V

    .line 827
    iget-wide v6, p0, Lo/PayCallResponseJsonAdapter;->MediaBrowserCompat:J

    invoke-virtual {v0, v6, v7}, Lo/CardBinResponse;->onNavigationEvent(J)V

    .line 828
    iget v3, p0, Lo/PayCallResponseJsonAdapter;->AudioAttributesImplBaseParcelizer:I

    invoke-virtual {v0, v3}, Lo/CardBinResponse;->extraCallback(I)V

    .line 829
    invoke-virtual {v0, p0}, Lo/CardBinResponse;->ICustomTabsCallback(Lo/CardBinResponse$onMessageChannelReady;)V

    .line 830
    iget-object v3, p0, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl:[I

    add-int/lit8 v6, v1, 0x1

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lo/PayCallResponseJsonAdapter;->mayLaunchUrl:[I

    .line 831
    aput p1, v3, v1

    .line 832
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lo/CardBinResponse;

    iput-object p1, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    .line 833
    aput-object v0, p1, v1

    .line 834
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->RemoteActionCompatParcelizer:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lo/PayCallResponseJsonAdapter;->RemoteActionCompatParcelizer:[Z

    if-eq p2, v5, :cond_b

    if-ne p2, v4, :cond_c

    :cond_b
    const/4 v2, 0x1

    .line 835
    :cond_c
    aput-boolean v2, p1, v1

    .line 837
    iget-boolean p1, p0, Lo/PayCallResponseJsonAdapter;->setDefaultImpl:Z

    iget-object v2, p0, Lo/PayCallResponseJsonAdapter;->RemoteActionCompatParcelizer:[Z

    aget-boolean v2, v2, v1

    or-int/2addr p1, v2

    iput-boolean p1, p0, Lo/PayCallResponseJsonAdapter;->setDefaultImpl:Z

    if-ne p2, v5, :cond_d

    .line 839
    iput-boolean v5, p0, Lo/PayCallResponseJsonAdapter;->requestPostMessageChannel:Z

    .line 840
    iput v1, p0, Lo/PayCallResponseJsonAdapter;->updateVisuals:I

    goto :goto_1

    :cond_d
    if-ne p2, v4, :cond_e

    .line 842
    iput-boolean v5, p0, Lo/PayCallResponseJsonAdapter;->validateRelationship:Z

    .line 843
    iput v1, p0, Lo/PayCallResponseJsonAdapter;->IPostMessageService:I

    .line 845
    :cond_e
    :goto_1
    invoke-static {p2}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback(I)I

    move-result p1

    iget v2, p0, Lo/PayCallResponseJsonAdapter;->ICustomTabsService$Stub$Proxy:I

    invoke-static {v2}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback(I)I

    move-result v2

    if-le p1, v2, :cond_f

    .line 846
    iput v1, p0, Lo/PayCallResponseJsonAdapter;->ICustomTabsService$Stub:I

    .line 847
    iput p2, p0, Lo/PayCallResponseJsonAdapter;->ICustomTabsService$Stub$Proxy:I

    .line 849
    :cond_f
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->write:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lo/PayCallResponseJsonAdapter;->write:[Z

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 2

    const/4 v0, 0x1

    .line 855
    iput-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->AudioAttributesImplApi21Parcelizer:Z

    .line 856
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->getInterfaceDescriptor:Landroid/os/Handler;

    iget-object v1, p0, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 2

    .line 247
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy:[I

    aget p1, v0, p1

    .line 248
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->write:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 249
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->write:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method public final onPostMessage(IZZ)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 769
    iput-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->requestPostMessageChannel:Z

    .line 770
    iput-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->validateRelationship:Z

    .line 772
    :cond_0
    iput p1, p0, Lo/PayCallResponseJsonAdapter;->AudioAttributesImplBaseParcelizer:I

    .line 773
    iget-object p3, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 774
    invoke-virtual {v3, p1}, Lo/CardBinResponse;->extraCallback(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 777
    iget-object p1, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object p3, p1, v0

    .line 778
    invoke-virtual {p3}, Lo/CardBinResponse;->extraCallback()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onPostMessage(Lo/component3;JJ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 644
    iget-object v2, v0, Lo/PayCallResponseJsonAdapter;->onNavigationEvent:Lo/ListInstrumentJsonAdapter;

    invoke-virtual {v2, v1}, Lo/ListInstrumentJsonAdapter;->onPostMessage(Lo/component3;)V

    .line 645
    iget-object v2, v0, Lo/PayCallResponseJsonAdapter;->onTransact:Lo/Account$extraCallback;

    iget-object v3, v1, Lo/component3;->ICustomTabsCallback:Lo/PaymentRequestJsonAdapter;

    .line 647
    invoke-virtual/range {p1 .. p1}, Lo/component3;->extraCallback()Landroid/net/Uri;

    move-result-object v4

    .line 648
    invoke-virtual/range {p1 .. p1}, Lo/component3;->onMessageChannelReady()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lo/component3;->onPostMessage:I

    iget v7, v0, Lo/PayCallResponseJsonAdapter;->onPostMessage:I

    iget-object v8, v1, Lo/component3;->extraCallback:Lo/p$a;

    iget v9, v1, Lo/component3;->onNavigationEvent:I

    iget-object v10, v1, Lo/component3;->onMessageChannelReady:Ljava/lang/Object;

    iget-wide v11, v1, Lo/component3;->asInterface:J

    iget-wide v13, v1, Lo/component3;->asBinder:J

    .line 658
    invoke-virtual/range {p1 .. p1}, Lo/component3;->onNavigationEvent()J

    move-result-wide v19

    .line 645
    invoke-virtual/range {v2 .. v20}, Lo/Account$extraCallback;->onNavigationEvent(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IILo/p$a;ILjava/lang/Object;JJJJJ)V

    .line 659
    iget-boolean v1, v0, Lo/PayCallResponseJsonAdapter;->notify:Z

    if-nez v1, :cond_0

    .line 660
    iget-wide v1, v0, Lo/PayCallResponseJsonAdapter;->read:J

    invoke-virtual {v0, v1, v2}, Lo/PayCallResponseJsonAdapter;->extraCallback(J)Z

    return-void

    .line 662
    :cond_0
    iget-object v1, v0, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback:Lo/PayCallResponseJsonAdapter$onMessageChannelReady;

    invoke-interface {v1, v0}, Lo/PayCallResponseJsonAdapter$onMessageChannelReady;->onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V

    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 1

    .line 454
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->onNavigationEvent:Lo/ListInstrumentJsonAdapter;

    invoke-virtual {v0, p1}, Lo/ListInstrumentJsonAdapter;->onNavigationEvent(Z)V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 4

    .line 435
    iget-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->notify:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->extraCommand:[Lo/CardBinResponse;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 439
    invoke-virtual {v3}, Lo/CardBinResponse;->asInterface()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->ICustomTabsCallback(Lcom/google/android/exoplayer2/upstream/Loader$extraCallback;)V

    .line 443
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->getInterfaceDescriptor:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 444
    iput-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->cancel:Z

    .line 445
    iget-object v0, p0, Lo/PayCallResponseJsonAdapter;->warmup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method

.method final onTransact()V
    .locals 1

    const/4 v0, 0x1

    .line 910
    iput-boolean v0, p0, Lo/PayCallResponseJsonAdapter;->IPostMessageService$Stub:Z

    .line 911
    invoke-virtual {p0}, Lo/PayCallResponseJsonAdapter;->newSession()V

    return-void
.end method
