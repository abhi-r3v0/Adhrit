.class public final Lo/AFInstantApps;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onNavigationEvent:Lo/PaymentInstrumentRequestJsonAdapter;


# direct methods
.method public static extraCallback(Landroid/content/Context;Lo/s;Lo/InstrumentViewMapping;Lo/Validate;Lo/generateInviteUrl;Landroid/os/Looper;)Lo/s$d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/s;",
            "Lo/InstrumentViewMapping;",
            "Lo/Validate;",
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;",
            "Landroid/os/Looper;",
            ")",
            "Lo/s$d;"
        }
    .end annotation

    .line 299
    new-instance v5, Lo/s$a$extraCallback;

    invoke-direct {v5}, Lo/s$a$extraCallback;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lo/AFInstantApps;->onMessageChannelReady(Landroid/content/Context;Lo/s;Lo/InstrumentViewMapping;Lo/Validate;Lo/generateInviteUrl;Lo/s$a$extraCallback;Landroid/os/Looper;)Lo/s$d;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady(Landroid/content/Context;Lo/s;Lo/InstrumentViewMapping;Lo/Validate;)Lo/s$d;
    .locals 6

    .line 199
    invoke-static {}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent()Landroid/os/Looper;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 193
    invoke-static/range {v0 .. v5}, Lo/AFInstantApps;->extraCallback(Landroid/content/Context;Lo/s;Lo/InstrumentViewMapping;Lo/Validate;Lo/generateInviteUrl;Landroid/os/Looper;)Lo/s$d;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady(Landroid/content/Context;Lo/s;Lo/InstrumentViewMapping;Lo/Validate;Lo/generateInviteUrl;Lo/s$a$extraCallback;Landroid/os/Looper;)Lo/s$d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/s;",
            "Lo/InstrumentViewMapping;",
            "Lo/Validate;",
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;",
            "Lo/s$a$extraCallback;",
            "Landroid/os/Looper;",
            ")",
            "Lo/s$d;"
        }
    .end annotation

    .line 337
    invoke-static {p0}, Lo/AFInstantApps;->onPostMessage(Landroid/content/Context;)Lo/PaymentInstrumentRequestJsonAdapter;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 331
    invoke-static/range {v0 .. v7}, Lo/AFInstantApps;->onNavigationEvent(Landroid/content/Context;Lo/s;Lo/InstrumentViewMapping;Lo/Validate;Lo/generateInviteUrl;Lo/PaymentInstrumentRequestJsonAdapter;Lo/s$a$extraCallback;Landroid/os/Looper;)Lo/s$d;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Landroid/content/Context;Lo/s;Lo/InstrumentViewMapping;Lo/Validate;Lo/generateInviteUrl;Lo/PaymentInstrumentRequestJsonAdapter;Lo/s$a$extraCallback;Landroid/os/Looper;)Lo/s$d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/s;",
            "Lo/InstrumentViewMapping;",
            "Lo/Validate;",
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;",
            "Lo/PaymentInstrumentRequestJsonAdapter;",
            "Lo/s$a$extraCallback;",
            "Landroid/os/Looper;",
            ")",
            "Lo/s$d;"
        }
    .end annotation

    .line 365
    new-instance v9, Lo/s$d;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lo/s$d;-><init>(Landroid/content/Context;Lo/s;Lo/InstrumentViewMapping;Lo/Validate;Lo/generateInviteUrl;Lo/PaymentInstrumentRequestJsonAdapter;Lo/s$a$extraCallback;Landroid/os/Looper;)V

    return-object v9
.end method

.method private static declared-synchronized onPostMessage(Landroid/content/Context;)Lo/PaymentInstrumentRequestJsonAdapter;
    .locals 2

    const-class v0, Lo/AFInstantApps;

    monitor-enter v0

    .line 445
    :try_start_0
    sget-object v1, Lo/AFInstantApps;->onNavigationEvent:Lo/PaymentInstrumentRequestJsonAdapter;

    if-nez v1, :cond_0

    .line 446
    new-instance v1, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;

    invoke-direct {v1, p0}, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;->onMessageChannelReady()Lo/SuggestedPaymnetInstrumentJsonAdapter;

    move-result-object p0

    sput-object p0, Lo/AFInstantApps;->onNavigationEvent:Lo/PaymentInstrumentRequestJsonAdapter;

    .line 448
    :cond_0
    sget-object p0, Lo/AFInstantApps;->onNavigationEvent:Lo/PaymentInstrumentRequestJsonAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
