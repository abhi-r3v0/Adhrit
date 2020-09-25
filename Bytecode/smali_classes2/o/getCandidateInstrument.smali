.class public final Lo/getCandidateInstrument;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
        "Lo/CardLinkSuccessResponseJsonAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extraCallback(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Precache invalid numeric parameter \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 5

    check-cast p1, Lo/CardLinkSuccessResponseJsonAdapter;

    invoke-static {}, Lo/getParcel;->cancelAll()Lo/FeaturePitchJsonAdapter;

    const-string v0, "abort"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lo/FeaturePitchJsonAdapter;->onNavigationEvent(Lo/CardLinkSuccessResponseJsonAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Precache abort but no precache task running."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "src"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {p1}, Lo/FeaturePitchJsonAdapter;->onPostMessage(Lo/CardLinkSuccessResponseJsonAdapter;)Lo/FeaturePitch;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string p1, "Precache task is already running."

    :goto_0
    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {p1}, Lo/CardLinkSuccessResponseJsonAdapter;->onPostMessage()Lo/StatementPeriod;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p1, "Precache requires a dependency provider."

    goto :goto_0

    :cond_3
    new-instance v1, Lo/getLinkingData;

    const-string v2, "flags"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lo/getLinkingData;-><init>(Ljava/lang/String;)V

    const-string v2, "player"

    invoke-static {p2, v2}, Lo/getCandidateInstrument;->extraCallback(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1}, Lo/CardLinkSuccessResponseJsonAdapter;->onPostMessage()Lo/StatementPeriod;

    move-result-object v3

    iget-object v3, v3, Lo/StatementPeriod;->onMessageChannelReady:Lo/InstrumentValidationSuccessResponseJsonAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v2, v4, v1}, Lo/InstrumentValidationSuccessResponseJsonAdapter;->ICustomTabsCallback(Lo/CardLinkSuccessResponseJsonAdapter;ILjava/lang/String;Lo/getLinkingData;)Lo/InstrumentValidationSuccessRequest;

    move-result-object v1

    new-instance v2, Lo/FeaturePitch;

    invoke-direct {v2, p1, v1, v0}, Lo/FeaturePitch;-><init>(Lo/CardLinkSuccessResponseJsonAdapter;Lo/InstrumentValidationSuccessRequest;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/ContactReverseSyncResponse;->s_()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lo/FeaturePitchJsonAdapter;->onPostMessage(Lo/CardLinkSuccessResponseJsonAdapter;)Lo/FeaturePitch;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "Precache must specify a source."

    goto :goto_0

    :cond_6
    :goto_1
    const-string p1, "minBufferMs"

    invoke-static {p2, p1}, Lo/getCandidateInstrument;->extraCallback(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    :cond_7
    const-string p1, "maxBufferMs"

    invoke-static {p2, p1}, Lo/getCandidateInstrument;->extraCallback(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    :cond_8
    const-string p1, "bufferForPlaybackMs"

    invoke-static {p2, p1}, Lo/getCandidateInstrument;->extraCallback(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    :cond_9
    const-string p1, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p2, p1}, Lo/getCandidateInstrument;->extraCallback(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    :cond_a
    return-void
.end method
