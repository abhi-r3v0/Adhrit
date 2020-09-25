.class public final Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails;",
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
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\r0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableEmiDetailsAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/EmiDetails;",
        "nullableEncodedStringWrapperAdapter",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "nullableExtraCtaAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails$ExtraCta;",
        "nullableListOfNullableLoanDetailAdapter",
        "",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanDetail;",
        "nullableTotalPayableAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/TotalPayable;",
        "options",
        "Lcom/squareup/moshi/JsonReader$Options;",
        "fromJson",
        "reader",
        "Lcom/squareup/moshi/JsonReader;",
        "toJson",
        "",
        "writer",
        "Lcom/squareup/moshi/JsonWriter;",
        "value",
        "toString",
        "",
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
.field private final nullableEmiDetailsAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/EmiDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lo/getTargetScrollPosition;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableExtraCtaAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails$ExtraCta;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableListOfNullableLoanDetailAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanDetail;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nullableTotalPayableAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/TotalPayable;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lo/SessionFiles$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/sessionFile;)V
    .locals 7

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v0, "total_payable"

    const-string v1, "title"

    const-string v2, "loan_details"

    const-string v3, "emi_details"

    const-string v4, "cta"

    .line 22
    filled-new-array {v4, v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v5}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v5

    const-string v6, "JsonReader.Options.of(\"c\u2026\"title\", \"total_payable\")"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 25
    const-class v5, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails$ExtraCta;

    check-cast v5, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v6, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v6, Ljava/util/Set;

    .line 25
    invoke-virtual {p1, v5, v6, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v4

    const-string v5, "moshi.adapter(ExtraDetai\u2026.java, emptySet(), \"cta\")"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableExtraCtaAdapter:Lo/JniNativeApi;

    .line 28
    const-class v4, Lcom/dreamplug/fabrik/ui/lending/model/EmiDetails;

    check-cast v4, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v5, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v5, Ljava/util/Set;

    .line 28
    invoke-virtual {p1, v4, v5, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v3

    const-string v4, "moshi.adapter(EmiDetails\u2026mptySet(), \"emi_details\")"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableEmiDetailsAdapter:Lo/JniNativeApi;

    .line 31
    const-class v3, Ljava/util/List;

    check-cast v3, Ljava/lang/reflect/Type;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/reflect/Type;

    const-class v5, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetail;

    check-cast v5, Ljava/lang/reflect/Type;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v4, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v4, Ljava/util/Set;

    .line 31
    invoke-virtual {p1, v3, v4, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Types.newP\u2026ptySet(), \"loan_details\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableListOfNullableLoanDetailAdapter:Lo/JniNativeApi;

    .line 35
    const-class v2, Lo/getTargetScrollPosition;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    .line 35
    invoke-virtual {p1, v2, v3, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(EncodedStr\u2026ava, emptySet(), \"title\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 38
    const-class v1, Lcom/dreamplug/fabrik/ui/lending/model/TotalPayable;

    check-cast v1, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    .line 38
    invoke-virtual {p1, v1, v2, v0}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(TotalPayab\u2026tySet(), \"total_payable\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableTotalPayableAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 18
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1078
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "cta"

    .line 1079
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1080
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableExtraCtaAdapter:Lo/JniNativeApi;

    .line 1136
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails$ExtraCta;

    .line 1080
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "emi_details"

    .line 1081
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1082
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableEmiDetailsAdapter:Lo/JniNativeApi;

    .line 1137
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/EmiDetails;

    .line 1082
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_details"

    .line 1083
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1084
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableListOfNullableLoanDetailAdapter:Lo/JniNativeApi;

    .line 1138
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails;->onMessageChannelReady:Ljava/util/List;

    .line 1084
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "title"

    .line 1085
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1086
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 1139
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    .line 1086
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "total_payable"

    .line 1087
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1088
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableTotalPayableAdapter:Lo/JniNativeApi;

    .line 1140
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/TotalPayable;

    .line 1088
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1089
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1076
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 7

    const-string v0, "reader"

    .line 18
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 1050
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1051
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v0}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableTotalPayableAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/dreamplug/fabrik/ui/lending/model/TotalPayable;

    goto :goto_0

    .line 1055
    :cond_1
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1054
    :cond_2
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableListOfNullableLoanDetailAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    goto :goto_0

    .line 1053
    :cond_3
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableEmiDetailsAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/dreamplug/fabrik/ui/lending/model/EmiDetails;

    goto :goto_0

    .line 1052
    :cond_4
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetailsJsonAdapter;->nullableExtraCtaAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails$ExtraCta;

    goto :goto_0

    .line 1059
    :cond_5
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1060
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1064
    :cond_6
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1065
    new-instance p1, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/ExtraDetails$ExtraCta;Lcom/dreamplug/fabrik/ui/lending/model/EmiDetails;Ljava/util/List;Lo/getTargetScrollPosition;Lcom/dreamplug/fabrik/ui/lending/model/TotalPayable;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(ExtraDetails)"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
