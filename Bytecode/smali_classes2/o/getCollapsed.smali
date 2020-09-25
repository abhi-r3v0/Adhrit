.class public final Lo/getCollapsed;
.super Ljava/lang/Object;


# static fields
.field public static final onMessageChannelReady:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

.field private static final onNavigationEvent:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->extraCallback()Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    sget-object v1, Lo/getInstrument_type;->extraCallback:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    invoke-virtual {v0, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    move-result-object v0

    check-cast v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Aead"

    const-string v4, "TinkAead"

    const-string v5, "AesCtrHmacAeadKey"

    invoke-static {v4, v3, v5, v2, v1}, Lo/getVersion;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lo/EmiScreenResponse$ChildCard;

    move-result-object v5

    invoke-virtual {v0, v5}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;->extraCallback(Lo/EmiScreenResponse$ChildCard;)Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    const-string v5, "AesEaxKey"

    invoke-static {v4, v3, v5, v2, v1}, Lo/getVersion;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lo/EmiScreenResponse$ChildCard;

    move-result-object v5

    invoke-virtual {v0, v5}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;->extraCallback(Lo/EmiScreenResponse$ChildCard;)Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    const-string v5, "AesGcmKey"

    invoke-static {v4, v3, v5, v2, v1}, Lo/getVersion;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lo/EmiScreenResponse$ChildCard;

    move-result-object v5

    invoke-virtual {v0, v5}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;->extraCallback(Lo/EmiScreenResponse$ChildCard;)Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    const-string v5, "ChaCha20Poly1305Key"

    invoke-static {v4, v3, v5, v2, v1}, Lo/getVersion;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lo/EmiScreenResponse$ChildCard;

    move-result-object v5

    invoke-virtual {v0, v5}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;->extraCallback(Lo/EmiScreenResponse$ChildCard;)Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    const-string v5, "KmsAeadKey"

    invoke-static {v4, v3, v5, v2, v1}, Lo/getVersion;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lo/EmiScreenResponse$ChildCard;

    move-result-object v5

    invoke-virtual {v0, v5}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;->extraCallback(Lo/EmiScreenResponse$ChildCard;)Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    const-string v5, "KmsEnvelopeAeadKey"

    invoke-static {v4, v3, v5, v2, v1}, Lo/getVersion;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lo/EmiScreenResponse$ChildCard;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;->extraCallback(Lo/EmiScreenResponse$ChildCard;)Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    const-string v1, "TINK_AEAD_1_0_0"

    invoke-virtual {v0, v1}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    sput-object v0, Lo/getCollapsed;->onMessageChannelReady:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    invoke-static {}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;->extraCallback()Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    sget-object v1, Lo/getCollapsed;->onMessageChannelReady:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    invoke-virtual {v0, v1}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onNavigationEvent(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;

    move-result-object v0

    check-cast v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    const-string v1, "TINK_AEAD_1_1_0"

    invoke-virtual {v0, v1}, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter$extraCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->onPostMessage()Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    sput-object v0, Lo/getCollapsed;->onNavigationEvent:Lo/EmiScreenResponse_StashDetails_EmiDetailsJsonAdapter;

    :try_start_0
    invoke-static {}, Lo/getCollapsed;->onMessageChannelReady()V
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

    new-instance v0, Lo/getProgressiveDial;

    invoke-direct {v0}, Lo/getProgressiveDial;-><init>()V

    const-string v1, "TinkAead"

    invoke-static {v1, v0}, Lo/getMax_limit;->onNavigationEvent(Ljava/lang/String;Lo/getSub_title;)V

    invoke-static {}, Lo/getInstrument_type;->onMessageChannelReady()V

    return-void
.end method
