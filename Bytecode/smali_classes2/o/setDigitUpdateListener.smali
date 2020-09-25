.class public final Lo/setDigitUpdateListener;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/setDigitUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setDigitUpdateListener;

    invoke-direct {v0}, Lo/setDigitUpdateListener;-><init>()V

    sput-object v0, Lo/setDigitUpdateListener;->ICustomTabsCallback:Lo/setDigitUpdateListener;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Landroid/content/Context;Lo/WinAccessibility;)Lo/setLastItem;
    .locals 23

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->ICustomTabsCallback()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    move-wide v5, v1

    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->onPostMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->extraCallback()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->onNavigationEvent()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    move-object/from16 v1, p0

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move-object v9, v3

    :goto_1
    invoke-virtual {v0, v1}, Lo/WinAccessibility;->extraCallback(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->warmup()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->onMessageChannelReady()Landroid/location/Location;

    move-result-object v15

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v2}, Lo/WinAccessibility;->onNavigationEvent(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->onRelationshipValidationResult()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->onTransact()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->asBinder()Lo/extraCallback$onNavigationEvent;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v4, Lo/WinLuckyNumberClaim;

    invoke-direct {v4, v2}, Lo/WinLuckyNumberClaim;-><init>(Lo/extraCallback$onNavigationEvent;)V

    move-object v14, v4

    goto :goto_2

    :cond_2
    move-object v14, v3

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2, v1}, Lo/ControlStatementRepo$TransactionItem;->ICustomTabsCallback([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_3

    :cond_3
    move-object/from16 v21, v3

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->getInterfaceDescriptor()Z

    move-result v22

    new-instance v1, Lo/setLastItem;

    move-object v3, v1

    const/4 v4, 0x7

    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->newSession()Landroid/os/Bundle;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->ICustomTabsService()Landroid/os/Bundle;

    move-result-object v18

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->ICustomTabsCallback$Stub$Proxy()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lo/WinAccessibility;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v20

    const/4 v4, 0x7

    invoke-direct/range {v3 .. v22}, Lo/setLastItem;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lo/WinLuckyNumberClaim;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method
