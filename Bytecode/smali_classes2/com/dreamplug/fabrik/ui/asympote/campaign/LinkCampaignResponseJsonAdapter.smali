.class public final Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u000bH\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "ctaAdapter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;",
        "nullableBackGroundAdapter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;",
        "nullableStringAdapter",
        "",
        "options",
        "Lcom/squareup/moshi/JsonReader$Options;",
        "postRedemptionDetailAdapter",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/PostRedemptionDetail;",
        "stringAdapter",
        "fromJson",
        "reader",
        "Lcom/squareup/moshi/JsonReader;",
        "toJson",
        "",
        "writer",
        "Lcom/squareup/moshi/JsonWriter;",
        "value",
        "toString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ctaAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableBackGroundAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableStringAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lo/SessionFiles$onNavigationEvent;

.field private final postRedemptionDetailAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/asympote/campaign/PostRedemptionDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final stringAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/sessionFile;)V
    .locals 9

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "campaign_id"

    const-string v2, "card_id"

    const-string v3, "background"

    const-string v4, "merchant_logo_url"

    const-string v5, "header_text"

    const-string v6, "sub_header_text"

    const-string v7, "cta"

    const-string v8, "post_redemption_detail"

    .line 23
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"c\u2026\"post_redemption_detail\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 25
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "campaignId"

    .line 25
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026et(),\n      \"campaignId\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 29
    const-class v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "background"

    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(BackGround\u2026emptySet(), \"background\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->nullableBackGroundAdapter:Lo/JniNativeApi;

    .line 31
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "merchantLogoUrl"

    .line 31
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026Set(), \"merchantLogoUrl\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 34
    const-class v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "cta"

    .line 34
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Cta::class.java, emptySet(), \"cta\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->ctaAdapter:Lo/JniNativeApi;

    .line 37
    const-class v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/PostRedemptionDetail;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "postRedemptionDetail"

    .line 37
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(PostRedemp\u2026, \"postRedemptionDetail\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->postRedemptionDetailAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 18
    check-cast p2, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1090
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "campaign_id"

    .line 1091
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1092
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2012
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->onNavigationEvent:Ljava/lang/String;

    .line 1092
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_id"

    .line 1093
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1094
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2014
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->onMessageChannelReady:Ljava/lang/String;

    .line 1094
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "background"

    .line 1095
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1096
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->nullableBackGroundAdapter:Lo/JniNativeApi;

    .line 2015
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    .line 1096
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "merchant_logo_url"

    .line 1097
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1098
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2017
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->extraCallback:Ljava/lang/String;

    .line 1098
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "header_text"

    .line 1099
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1100
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2019
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->onPostMessage:Ljava/lang/String;

    .line 1100
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "sub_header_text"

    .line 1101
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1102
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2021
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->asBinder:Ljava/lang/String;

    .line 1102
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "cta"

    .line 1103
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1104
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->ctaAdapter:Lo/JniNativeApi;

    .line 2022
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 1104
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "post_redemption_detail"

    .line 1105
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1106
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->postRedemptionDetailAdapter:Lo/JniNativeApi;

    .line 2024
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/asympote/campaign/PostRedemptionDetail;

    .line 1106
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1107
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1088
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 18
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    .line 1052
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v2

    const-string v3, "post_redemption_detail"

    const-string v12, "postRedemptionDetail"

    const-string v13, "card_id"

    const-string v14, "cardId"

    const-string v15, "campaign_id"

    move-object/from16 v16, v9

    const-string v9, "campaignId"

    move-object/from16 v17, v8

    const-string v8, "cta"

    if-eqz v2, :cond_4

    .line 1053
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v2}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 1063
    :pswitch_0
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->postRedemptionDetailAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/dreamplug/fabrik/ui/asympote/campaign/PostRedemptionDetail;

    if-eqz v11, :cond_0

    goto/16 :goto_1

    .line 1064
    :cond_0
    invoke-static {v12, v3, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"pos\u2026demption_detail\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1062
    :pswitch_1
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->ctaAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v8, v8, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"cta\", \"cta\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1061
    :pswitch_2
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    goto :goto_2

    .line 1060
    :pswitch_3
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    move-object/from16 v9, v16

    goto :goto_0

    .line 1059
    :pswitch_4
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    .line 1058
    :pswitch_5
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->nullableBackGroundAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    goto :goto_1

    .line 1056
    :pswitch_6
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v14, v13, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"car\u2026       \"card_id\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1054
    :pswitch_7
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v9, v15, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"cam\u2026   \"campaign_id\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1067
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1068
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    :goto_1
    move-object/from16 v9, v16

    :goto_2
    move-object/from16 v8, v17

    goto/16 :goto_0

    .line 1072
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1073
    new-instance v2, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;

    if-eqz v4, :cond_8

    if-eqz v5, :cond_7

    if-eqz v10, :cond_6

    if-eqz v11, :cond_5

    move-object v3, v2

    move-object/from16 v8, v17

    move-object/from16 v9, v16

    invoke-direct/range {v3 .. v11}, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/asympote/campaign/PostRedemptionDetail;)V

    return-object v2

    .line 1082
    :cond_5
    invoke-static {v12, v3, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"po\u2026demption_detail\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1080
    :cond_6
    invoke-static {v8, v8, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"cta\", \"cta\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1075
    :cond_7
    invoke-static {v14, v13, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"cardId\", \"card_id\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1074
    :cond_8
    invoke-static {v9, v15, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"ca\u2026\", \"campaign_id\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(LinkCampaignResponse)"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
