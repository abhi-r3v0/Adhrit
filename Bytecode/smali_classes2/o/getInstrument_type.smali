.class public final Lo/getInstrument_type;
.super Ljava/lang/Object;


# static fields
.field public static final extraCallback:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

.field private static final onNavigationEvent:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->extraCallback()Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    const-string v1, "TINK_MAC_1_0_0"

    invoke-virtual {v0, v1}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    const-string v1, "TinkMac"

    const-string v2, "Mac"

    const-string v3, "HmacKey"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lo/getVersion;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lo/EmiScreenResponse$ChildCard;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;->extraCallback(Lo/EmiScreenResponse$ChildCard;)Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    sput-object v0, Lo/getInstrument_type;->extraCallback:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    invoke-static {}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->extraCallback()Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    sget-object v1, Lo/getInstrument_type;->extraCallback:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    invoke-virtual {v0, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    move-result-object v0

    check-cast v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    const-string v1, "TINK_MAC_1_1_0"

    invoke-virtual {v0, v1}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    sput-object v0, Lo/getInstrument_type;->onNavigationEvent:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    :try_start_0
    invoke-static {}, Lo/getInstrument_type;->onMessageChannelReady()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static onMessageChannelReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lo/BankScreenResponse$ExistingAccount$$Parcelable;

    invoke-direct {v0}, Lo/BankScreenResponse$ExistingAccount$$Parcelable;-><init>()V

    const-string v1, "TinkMac"

    invoke-static {v1, v0}, Lo/getMax_limit;->onNavigationEvent(Ljava/lang/String;Lo/getSub_title;)V

    return-void
.end method
