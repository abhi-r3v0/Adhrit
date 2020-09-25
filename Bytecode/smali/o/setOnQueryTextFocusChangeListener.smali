.class public Lo/setOnQueryTextFocusChangeListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Lo/setOnSuggestionListener;

.field private asBinder:[D

.field private asInterface:Ljava/lang/String;

.field private extraCallback:I

.field onNavigationEvent:Lo/isIconified$onMessageChannelReady;

.field private onPostMessage:I

.field private onRelationshipValidationResult:Lo/getImeOptions;

.field private onTransact:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lo/setOnQueryTextFocusChangeListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setOnQueryTextFocusChangeListener;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lo/setOnQueryTextFocusChangeListener;->onTransact:[Z

    .line 28
    invoke-static {}, Lo/setOnSuggestionListener;->onNavigationEvent()Lo/setOnSuggestionListener;

    move-result-object v0

    iput-object v0, p0, Lo/setOnQueryTextFocusChangeListener;->ICustomTabsCallback$Stub:Lo/setOnSuggestionListener;

    .line 1076
    :try_start_0
    invoke-direct {p0}, Lo/setOnQueryTextFocusChangeListener;->onNavigationEvent()V

    .line 1077
    new-instance v0, Lo/isIconified$onMessageChannelReady;

    invoke-direct {v0}, Lo/isIconified$onMessageChannelReady;-><init>()V

    iget-object v1, p0, Lo/setOnQueryTextFocusChangeListener;->asInterface:Ljava/lang/String;

    .line 2091
    iput-object v1, v0, Lo/isIconified$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 1079
    iget-object v1, p0, Lo/setOnQueryTextFocusChangeListener;->onRelationshipValidationResult:Lo/getImeOptions;

    .line 3086
    iput-object v1, v0, Lo/isIconified$onMessageChannelReady;->onPostMessage:Lo/getImeOptions;

    .line 1080
    iget v1, p0, Lo/setOnQueryTextFocusChangeListener;->onPostMessage:I

    .line 4076
    iput v1, v0, Lo/isIconified$onMessageChannelReady;->onMessageChannelReady:I

    .line 1081
    iget v1, p0, Lo/setOnQueryTextFocusChangeListener;->ICustomTabsCallback:I

    .line 5066
    iput v1, v0, Lo/isIconified$onMessageChannelReady;->extraCallback:I

    .line 1082
    iget v1, p0, Lo/setOnQueryTextFocusChangeListener;->extraCallback:I

    .line 5071
    iput v1, v0, Lo/isIconified$onMessageChannelReady;->onNavigationEvent:I

    .line 1083
    iput-object v0, p0, Lo/setOnQueryTextFocusChangeListener;->onNavigationEvent:Lo/isIconified$onMessageChannelReady;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 32
    iget-object v1, p0, Lo/setOnQueryTextFocusChangeListener;->ICustomTabsCallback$Stub:Lo/setOnSuggestionListener;

    sget-object v2, Lo/setOnQueryTextFocusChangeListener;->onMessageChannelReady:Ljava/lang/String;

    .line 6010
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 6011
    new-instance v4, Ljava/io/PrintWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 6012
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 6013
    invoke-virtual {v3}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6061
    iget-boolean v1, v1, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v1, :cond_0

    .line 6062
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6064
    :cond_0
    sget-object v1, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method private onNavigationEvent()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0xac44

    .line 41
    iput v0, p0, Lo/setOnQueryTextFocusChangeListener;->ICustomTabsCallback:I

    const/4 v1, 0x4

    new-array v1, v1, [D

    .line 44
    fill-array-data v1, :array_0

    iput-object v1, p0, Lo/setOnQueryTextFocusChangeListener;->asBinder:[D

    int-to-double v0, v0

    const-wide v2, 0x3fb3333333333333L    # 0.075

    mul-double v0, v0, v2

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    .line 50
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v3, v0

    .line 54
    iput v3, p0, Lo/setOnQueryTextFocusChangeListener;->extraCallback:I

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lo/setOnQueryTextFocusChangeListener;->onPostMessage:I

    const-string v1, ""

    .line 58
    iput-object v1, p0, Lo/setOnQueryTextFocusChangeListener;->asInterface:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lo/setOnQueryTextFocusChangeListener;->asBinder:[D

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lo/setOnQueryTextFocusChangeListener;->onTransact:[Z

    const/4 v1, 0x0

    .line 60
    :goto_0
    iget-object v2, p0, Lo/setOnQueryTextFocusChangeListener;->asBinder:[D

    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lo/setOnQueryTextFocusChangeListener;->asInterface:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/setOnQueryTextFocusChangeListener;->asInterface:Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lo/setOnQueryTextFocusChangeListener;->onTransact:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget v0, p0, Lo/setOnQueryTextFocusChangeListener;->extraCallback:I

    .line 66
    new-instance v1, Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    iget v4, p0, Lo/setOnQueryTextFocusChangeListener;->ICustomTabsCallback:I

    array-length v5, v2

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;-><init>([DIII)V

    .line 71
    new-instance v0, Lo/getImeOptions;

    iget-object v5, p0, Lo/setOnQueryTextFocusChangeListener;->asBinder:[D

    array-length v4, v5

    iget v1, p0, Lo/setOnQueryTextFocusChangeListener;->ICustomTabsCallback:I

    int-to-float v6, v1

    const/4 v7, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/getImeOptions;-><init>(II[DFI)V

    iput-object v0, p0, Lo/setOnQueryTextFocusChangeListener;->onRelationshipValidationResult:Lo/getImeOptions;

    return-void

    :array_0
    .array-data 8
        0x408f880000000000L    # 1009.0
        0x40979c0000000000L    # 1511.0
        0x409f840000000000L    # 2017.0
        0x40a3b20000000000L    # 2521.0
    .end array-data
.end method
