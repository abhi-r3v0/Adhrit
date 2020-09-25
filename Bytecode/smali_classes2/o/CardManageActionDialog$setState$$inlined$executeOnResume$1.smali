.class public Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/WinDetailsItemJsonAdapter;


# static fields
.field private static final onNavigationEvent:Z


# instance fields
.field private final ICustomTabsCallback:Lo/ReferredContactsJsonAdapter;

.field private final extraCallback:Lo/Cta_DeeplinkJsonAdapter;

.field private final onPostMessage:Lo/CredProtectContentModel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Z

    sput-boolean v0, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->onNavigationEvent:Z

    return-void
.end method

.method public constructor <init>(Lo/CredProtectContentModel;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lo/ReferredContactsJsonAdapter;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lo/ReferredContactsJsonAdapter;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;-><init>(Lo/CredProtectContentModel;Lo/ReferredContactsJsonAdapter;)V

    return-void
.end method

.method private constructor <init>(Lo/CredProtectContentModel;Lo/ReferredContactsJsonAdapter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->onPostMessage:Lo/CredProtectContentModel;

    new-instance v0, Lo/CredProtectResponse$Cards;

    invoke-direct {v0, p1}, Lo/CredProtectResponse$Cards;-><init>(Lo/CredProtectContentModel;)V

    iput-object v0, p0, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback:Lo/Cta_DeeplinkJsonAdapter;

    iput-object p2, p0, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/ReferredContactsJsonAdapter;

    return-void
.end method

.method public constructor <init>(Lo/Cta_DeeplinkJsonAdapter;)V
    .locals 2

    new-instance v0, Lo/ReferredContactsJsonAdapter;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lo/ReferredContactsJsonAdapter;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;-><init>(Lo/Cta_DeeplinkJsonAdapter;Lo/ReferredContactsJsonAdapter;)V

    return-void
.end method

.method private constructor <init>(Lo/Cta_DeeplinkJsonAdapter;Lo/ReferredContactsJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback:Lo/Cta_DeeplinkJsonAdapter;

    iput-object p1, p0, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->onPostMessage:Lo/CredProtectContentModel;

    iput-object p2, p0, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/ReferredContactsJsonAdapter;

    return-void
.end method

.method private static extraCallback(Ljava/lang/String;Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lcom/google/android/gms/internal/ads/zzae;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzae;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzae;
        }
    .end annotation

    invoke-virtual {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult()Lo/setAspectRatio;

    move-result-object v0

    invoke-virtual {p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onTransact()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-interface {v0, p2}, Lo/setAspectRatio;->ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzae;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzae; {:try_start_0 .. :try_end_0} :catch_0

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    throw p2
.end method

.method private final onMessageChannelReady(Ljava/io/InputStream;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/ads/zzac;
        }
    .end annotation

    new-instance v0, Lo/AmountScreenResponse$ScreenData;

    iget-object v1, p0, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/ReferredContactsJsonAdapter;

    invoke-direct {v0, v1, p2}, Lo/AmountScreenResponse$ScreenData;-><init>(Lo/ReferredContactsJsonAdapter;I)V

    const-string p2, "Error occurred when closing InputStream"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v3, p0, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/ReferredContactsJsonAdapter;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lo/ReferredContactsJsonAdapter;->onPostMessage(I)[B

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v2, v1, v3}, Lo/AmountScreenResponse$ScreenData;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/AmountScreenResponse$ScreenData;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iget-object p1, p0, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/ReferredContactsJsonAdapter;

    invoke-virtual {p1, v2}, Lo/ReferredContactsJsonAdapter;->onNavigationEvent([B)V

    invoke-virtual {v0}, Lo/AmountScreenResponse$ScreenData;->close()V

    return-object v3

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_2
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzac;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzac;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    iget-object p1, p0, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/ReferredContactsJsonAdapter;

    invoke-virtual {p1, v2}, Lo/ReferredContactsJsonAdapter;->onNavigationEvent([B)V

    invoke-virtual {v0}, Lo/AmountScreenResponse$ScreenData;->close()V

    throw v3
.end method


# virtual methods
.method public extraCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;)Lo/initiateUPI;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
            "*>;)",
            "Lo/initiateUPI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzae;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->asInterface()Lo/GameWebViewFragment$MyJavascriptInterface;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v11, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->onNavigationEvent:Ljava/lang/String;

    if-eqz v11, :cond_1

    const-string v11, "If-None-Match"

    iget-object v12, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->onNavigationEvent:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v11, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_2

    const-string v11, "If-Modified-Since"

    iget-wide v12, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback:J

    invoke-static {v12, v13}, Lo/Template$$Parcelable;->ICustomTabsCallback(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v10

    :goto_1
    iget-object v10, v1, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback:Lo/Cta_DeeplinkJsonAdapter;

    invoke-virtual {v10, v2, v0}, Lo/Cta_DeeplinkJsonAdapter;->onPostMessage(Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Ljava/util/Map;)Lo/CardLinkingReason;

    move-result-object v10
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v10}, Lo/CardLinkingReason;->onMessageChannelReady()I

    move-result v12

    invoke-virtual {v10}, Lo/CardLinkingReason;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v5

    const/16 v0, 0x130

    if-ne v12, v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->asInterface()Lo/GameWebViewFragment$MyJavascriptInterface;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lo/initiateUPI;

    const/16 v14, 0x130

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v17, v11, v3

    move-object v13, v0

    move-object/from16 v19, v5

    invoke-direct/range {v13 .. v19}, Lo/initiateUPI;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    :cond_3
    new-instance v11, Ljava/util/TreeSet;

    sget-object v12, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v11, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo/SpinTheWheelResponse_MetaJsonAdapter;

    invoke-virtual {v13}, Lo/SpinTheWheelResponse_MetaJsonAdapter;->onNavigationEvent()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v13, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->asInterface:Ljava/util/List;

    if-eqz v13, :cond_6

    iget-object v13, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->asInterface:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    iget-object v13, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->asInterface:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/SpinTheWheelResponse_MetaJsonAdapter;

    invoke-virtual {v14}, Lo/SpinTheWheelResponse_MetaJsonAdapter;->onNavigationEvent()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v13, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    iget-object v13, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    new-instance v15, Lo/SpinTheWheelResponse_MetaJsonAdapter;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v8, v14}, Lo/SpinTheWheelResponse_MetaJsonAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v8, Lo/initiateUPI;

    const/16 v15, 0x130

    iget-object v0, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->onMessageChannelReady:[B

    const/16 v17, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v18, v13, v3

    move-object v14, v8

    move-object/from16 v16, v0

    move-object/from16 v20, v12

    invoke-direct/range {v14 .. v20}, Lo/initiateUPI;-><init>(I[BZJLjava/util/List;)V

    return-object v8

    :cond_9
    invoke-virtual {v10}, Lo/CardLinkingReason;->extraCallback()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v10}, Lo/CardLinkingReason;->onPostMessage()I

    move-result v8

    invoke-direct {v1, v0, v8}, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/io/InputStream;I)[B

    move-result-object v0

    goto :goto_5

    :cond_a
    new-array v0, v9, [B
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move-object v8, v0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long/2addr v13, v3

    sget-boolean v0, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->onNavigationEvent:Z

    if-nez v0, :cond_b

    const-wide/16 v15, 0xbb8

    cmp-long v0, v13, v15

    if-lez v0, :cond_d

    :cond_b
    const-string v0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v6

    if-eqz v8, :cond_c

    array-length v13, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_6

    :cond_c
    const-string v13, "null"

    :goto_6
    aput-object v13, v11, v7

    const/4 v13, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x4

    invoke-virtual/range {p1 .. p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult()Lo/setAspectRatio;

    move-result-object v14

    invoke-interface {v14}, Lo/setAspectRatio;->onPostMessage()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-static {v0, v11}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    const/16 v0, 0xc8

    if-lt v12, v0, :cond_e

    const/16 v0, 0x12b

    if-gt v12, v0, :cond_e

    new-instance v0, Lo/initiateUPI;

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v15, v3

    move-object v11, v0

    move-object v13, v8

    move-object/from16 v17, v5

    invoke-direct/range {v11 .. v17}, Lo/initiateUPI;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    :cond_e
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object/from16 v17, v5

    move-object v13, v8

    move-object v8, v10

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v17, v5

    move-object v8, v10

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v17, v5

    const/4 v8, 0x0

    :goto_7
    const/4 v13, 0x0

    :goto_8
    if-eqz v8, :cond_15

    invoke-virtual {v8}, Lo/CardLinkingReason;->onMessageChannelReady()I

    move-result v0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-virtual/range {p1 .. p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Unexpected response code %d for %s"

    invoke-static {v6, v5}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v13, :cond_14

    new-instance v5, Lo/initiateUPI;

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v6, v3

    move-object v11, v5

    move v12, v0

    invoke-direct/range {v11 .. v17}, Lo/initiateUPI;-><init>(I[BZJLjava/util/List;)V

    const/16 v6, 0x191

    if-eq v0, v6, :cond_13

    const/16 v6, 0x193

    if-ne v0, v6, :cond_f

    goto :goto_a

    :cond_f
    const/16 v2, 0x190

    if-lt v0, v2, :cond_11

    const/16 v2, 0x1f3

    if-le v0, v2, :cond_10

    goto :goto_9

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzg;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzg;-><init>(Lo/initiateUPI;)V

    throw v0

    :cond_11
    :goto_9
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_12

    const/16 v2, 0x257

    if-gt v0, v2, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/ads/zzac;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzac;-><init>(Lo/initiateUPI;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzac;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzac;-><init>(Lo/initiateUPI;)V

    throw v0

    :cond_13
    :goto_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zza;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zza;-><init>(Lo/initiateUPI;)V

    const-string v5, "auth"

    goto :goto_c

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzo;-><init>()V

    const-string v5, "network"

    goto :goto_c

    :cond_15
    new-instance v2, Lcom/google/android/gms/internal/ads/zzq;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzq;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Bad URL "

    invoke-virtual/range {p1 .. p1}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_16
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b
    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    const-string v5, "socket"

    :goto_c
    invoke-static {v5, v2, v0}, Lo/CardManageActionDialog$setState$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;Lcom/google/android/gms/internal/ads/zzae;)V

    goto/16 :goto_0
.end method
