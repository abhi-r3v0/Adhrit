.class public final Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;",
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u000bH\u0016R\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00018\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "longAtCredDateFormatAdapter",
        "",
        "options",
        "Lcom/squareup/moshi/JsonReader$Options;",
        "stringAdapter",
        "",
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
.field private final longAtCredDateFormatAdapter:Lo/JniNativeApi;
    .annotation runtime Lcom/dreamplug/androidapp/utils/network/CredDateFormat;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lo/SessionFiles$onNavigationEvent;

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
    .locals 11

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "created_at"

    const-string v2, "updated_at"

    const-string v3, "created_by"

    const-string v4, "updated_by"

    const-string v5, "external_id"

    const-string v6, "entity_type"

    const-string v7, "benefit_type"

    const-string v8, "benefit_value"

    const-string v9, "action_type"

    const-string v10, "status"

    .line 24
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"c\u2026 \"action_type\", \"status\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 27
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "longAtCredDateFormatAdapter"

    invoke-static {v1, v2}, Lo/serializeSessionOs;->extraCallback(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "createdAt"

    .line 27
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Long::clas\u2026atAdapter\"), \"createdAt\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->longAtCredDateFormatAdapter:Lo/JniNativeApi;

    .line 30
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "createdBy"

    .line 30
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(String::cl\u2026Set(),\n      \"createdBy\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 3

    .line 19
    check-cast p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1098
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "created_at"

    .line 1099
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1100
    iget-object v0, p0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->longAtCredDateFormatAdapter:Lo/JniNativeApi;

    .line 2080
    iget-wide v1, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;->onPostMessage:J

    .line 1100
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "updated_at"

    .line 1101
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1102
    iget-object v0, p0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->longAtCredDateFormatAdapter:Lo/JniNativeApi;

    .line 2083
    iget-wide v1, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;->ICustomTabsCallback:J

    .line 1102
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "created_by"

    .line 1103
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1104
    iget-object v0, p0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2085
    iget-object v1, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;->onNavigationEvent:Ljava/lang/String;

    .line 1104
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "updated_by"

    .line 1105
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1106
    iget-object v0, p0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2087
    iget-object v1, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;->extraCallback:Ljava/lang/String;

    .line 1106
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "external_id"

    .line 1107
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1108
    iget-object v0, p0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2089
    iget-object v1, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;->onMessageChannelReady:Ljava/lang/String;

    .line 1108
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "entity_type"

    .line 1109
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1110
    iget-object v0, p0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2091
    iget-object v1, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 1110
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "benefit_type"

    .line 1111
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1112
    iget-object v0, p0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2093
    iget-object v1, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;->asBinder:Ljava/lang/String;

    .line 1112
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "benefit_value"

    .line 1113
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1114
    iget-object v0, p0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2095
    iget-object v1, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;->asInterface:Ljava/lang/String;

    .line 1114
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "action_type"

    .line 1115
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1116
    iget-object v0, p0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2097
    iget-object v1, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1116
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "status"

    .line 1117
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1118
    iget-object v0, p0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2098
    iget-object p2, p2, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;->onTransact:Ljava/lang/String;

    .line 1118
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1119
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1096
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 19
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v2, 0x0

    move-object v3, v2

    move-object v9, v3

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    .line 1048
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v4

    const-string v5, "action_type"

    const-string v6, "actionType"

    const-string v7, "benefit_value"

    const-string v8, "benefitValue"

    move-object/from16 v17, v15

    const-string v15, "benefit_type"

    move-object/from16 v18, v14

    const-string v14, "benefitType"

    move-object/from16 v19, v13

    const-string v13, "entity_type"

    move-object/from16 v20, v12

    const-string v12, "entityType"

    move-object/from16 v21, v11

    const-string v11, "external_id"

    move-object/from16 v22, v10

    const-string v10, "externalId"

    move-object/from16 v23, v9

    const-string v9, "updated_by"

    move-object/from16 v24, v3

    const-string v3, "updatedBy"

    move-object/from16 v25, v2

    const-string v2, "created_by"

    move-object/from16 v26, v2

    const-string v2, "createdBy"

    move-object/from16 v27, v2

    const-string v2, "updated_at"

    move-object/from16 v28, v2

    const-string v2, "updatedAt"

    move-object/from16 v29, v2

    const-string v2, "created_at"

    move-object/from16 v30, v2

    const-string v2, "createdAt"

    move-object/from16 v31, v2

    const-string v2, "status"

    if-eqz v4, :cond_a

    .line 1049
    iget-object v4, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v4}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 1068
    :pswitch_0
    iget-object v3, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    if-eqz v16, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v2, v2, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"sta\u2026        \"status\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1066
    :pswitch_1
    iget-object v2, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v6, v5, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"act\u2026   \"action_type\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1064
    :pswitch_2
    iget-object v2, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_2

    move-object/from16 v15, v17

    goto/16 :goto_3

    .line 1065
    :cond_2
    invoke-static {v8, v7, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ben\u2026 \"benefit_value\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1062
    :pswitch_3
    iget-object v2, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_3

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    goto/16 :goto_4

    .line 1063
    :cond_3
    invoke-static {v14, v15, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ben\u2026, \"benefit_type\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1060
    :pswitch_4
    iget-object v2, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v12, v2

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    goto/16 :goto_5

    :cond_4
    invoke-static {v12, v13, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ent\u2026   \"entity_type\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1058
    :pswitch_5
    iget-object v2, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v11, v2

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v12, v20

    goto/16 :goto_6

    :cond_5
    invoke-static {v10, v11, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ext\u2026   \"external_id\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1056
    :pswitch_6
    iget-object v2, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_6

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v12, v20

    move-object/from16 v11, v21

    goto/16 :goto_7

    :cond_6
    invoke-static {v3, v9, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"upd\u2026    \"updated_by\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1054
    :pswitch_7
    iget-object v2, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_7

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v12, v20

    move-object/from16 v11, v21

    move-object/from16 v10, v22

    goto/16 :goto_8

    :cond_7
    move-object/from16 v4, v26

    move-object/from16 v2, v27

    invoke-static {v2, v4, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"cre\u2026    \"created_by\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1052
    :pswitch_8
    iget-object v2, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->longAtCredDateFormatAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1053
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v12, v20

    move-object/from16 v11, v21

    move-object/from16 v10, v22

    move-object/from16 v9, v23

    goto :goto_9

    :cond_8
    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v3, v2, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"upd\u2026t\", \"updated_at\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1050
    :pswitch_9
    iget-object v2, v0, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefitJsonAdapter;->longAtCredDateFormatAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1051
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v12, v20

    move-object/from16 v11, v21

    move-object/from16 v10, v22

    move-object/from16 v9, v23

    move-object/from16 v3, v24

    goto/16 :goto_0

    :cond_9
    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v3, v2, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"cre\u2026t\", \"created_at\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1072
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1073
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    :goto_1
    move-object/from16 v15, v17

    :goto_2
    move-object/from16 v14, v18

    :goto_3
    move-object/from16 v13, v19

    :goto_4
    move-object/from16 v12, v20

    :goto_5
    move-object/from16 v11, v21

    :goto_6
    move-object/from16 v10, v22

    :goto_7
    move-object/from16 v9, v23

    :goto_8
    move-object/from16 v3, v24

    :goto_9
    move-object/from16 v2, v25

    goto/16 :goto_0

    :cond_a
    move-object/from16 v4, v26

    move-object/from16 v0, v27

    move-object/from16 v32, v28

    move-object/from16 v33, v29

    move-object/from16 v34, v30

    move-object/from16 v35, v31

    .line 1077
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1078
    new-instance v26, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;

    if-eqz v25, :cond_14

    .line 1079
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Number;->longValue()J

    move-result-wide v27

    if-eqz v24, :cond_13

    .line 1080
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Number;->longValue()J

    move-result-wide v24

    if-eqz v23, :cond_12

    if-eqz v22, :cond_11

    if-eqz v21, :cond_10

    if-eqz v20, :cond_f

    if-eqz v19, :cond_e

    if-eqz v18, :cond_d

    if-eqz v17, :cond_c

    if-eqz v16, :cond_b

    move-object/from16 v4, v26

    move-wide/from16 v5, v27

    move-wide/from16 v7, v24

    move-object/from16 v9, v23

    move-object/from16 v10, v22

    move-object/from16 v11, v21

    move-object/from16 v12, v20

    move-object/from16 v13, v19

    move-object/from16 v14, v18

    move-object/from16 v15, v17

    .line 1078
    invoke-direct/range {v4 .. v16}, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignBenefit;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v26

    .line 1090
    :cond_b
    invoke-static {v2, v2, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"status\", \"status\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1089
    :cond_c
    invoke-static {v6, v5, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"ac\u2026\", \"action_type\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1087
    :cond_d
    invoke-static {v8, v7, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"be\u2026lue\",\n            reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1085
    :cond_e
    invoke-static {v14, v15, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"be\u2026ype\",\n            reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1084
    :cond_f
    invoke-static {v12, v13, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"en\u2026\", \"entity_type\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1083
    :cond_10
    invoke-static {v10, v11, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"ex\u2026\", \"external_id\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1082
    :cond_11
    invoke-static {v3, v9, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"up\u2026y\", \"updated_by\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1081
    :cond_12
    invoke-static {v0, v4, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"cr\u2026y\", \"created_by\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_13
    move-object/from16 v0, v32

    move-object/from16 v2, v33

    .line 1080
    invoke-static {v2, v0, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"up\u2026t\", \"updated_at\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_14
    move-object/from16 v0, v34

    move-object/from16 v2, v35

    .line 1079
    invoke-static {v2, v0, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"cr\u2026t\", \"created_at\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_9
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

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(CampaignBenefit)"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
