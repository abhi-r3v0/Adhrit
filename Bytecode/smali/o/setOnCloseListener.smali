.class public abstract Lo/setOnCloseListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setOnCloseListener$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final IPostMessageService:Ljava/lang/String;


# instance fields
.field private AudioAttributesCompatParcelizer:Lo/preload;

.field private AudioAttributesImplBaseParcelizer:I

.field protected ICustomTabsCallback:I

.field protected ICustomTabsCallback$Stub:I

.field protected ICustomTabsCallback$Stub$Proxy:D

.field protected ICustomTabsService:I

.field protected ICustomTabsService$Stub:I

.field protected ICustomTabsService$Stub$Proxy:I

.field private INotificationSideChannel:I

.field private INotificationSideChannel$Default:[Z

.field private INotificationSideChannel$Stub:Lo/preload;

.field private INotificationSideChannel$Stub$Proxy:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

.field protected IPostMessageService$Stub:I

.field private IPostMessageService$Stub$Proxy:Lo/getImeOptions;

.field private IconCompatParcelizer:Lo/preload;

.field private MediaBrowserCompat:Lo/clearFocus$ICustomTabsCallback;

.field private RemoteActionCompatParcelizer:I

.field protected asBinder:I

.field protected asInterface:Ljava/lang/String;

.field private cancel:I

.field private cancelAll:Lo/getImeOptions;

.field private connect:I

.field private disconnect:I

.field protected extraCallback:Lo/setSearchableInfo;

.field protected extraCommand:I

.field private getDefaultImpl:Ljava/lang/String;

.field protected getInterfaceDescriptor:Ljava/lang/String;

.field protected mayLaunchUrl:I

.field protected newSession:I

.field private notify:Lo/requestFocus;

.field protected onMessageChannelReady:[D

.field protected onNavigationEvent:[D

.field public onPostMessage:Lo/setOnSuggestionListener;

.field protected onRelationshipValidationResult:I

.field protected onTransact:I

.field protected postMessage:D

.field private read:Lo/preload;

.field protected requestPostMessageChannel:I

.field private setDefaultImpl:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

.field protected updateVisuals:I

.field protected validateRelationship:I

.field protected warmup:[Ljava/lang/String;

.field private write:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lo/setOnCloseListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setOnCloseListener;->IPostMessageService:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/setOnCloseListener$onMessageChannelReady;)V
    .locals 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lo/setOnCloseListener;->INotificationSideChannel$Default:[Z

    .line 46
    iput-object v0, p0, Lo/setOnCloseListener;->setDefaultImpl:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 47
    iput-object v0, p0, Lo/setOnCloseListener;->INotificationSideChannel$Stub$Proxy:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 48
    iput-object v0, p0, Lo/setOnCloseListener;->INotificationSideChannel$Stub:Lo/preload;

    .line 49
    iput-object v0, p0, Lo/setOnCloseListener;->IconCompatParcelizer:Lo/preload;

    .line 50
    iput-object v0, p0, Lo/setOnCloseListener;->AudioAttributesCompatParcelizer:Lo/preload;

    .line 51
    iput-object v0, p0, Lo/setOnCloseListener;->read:Lo/preload;

    .line 72
    invoke-static {}, Lo/setOnSuggestionListener;->onNavigationEvent()Lo/setOnSuggestionListener;

    move-result-object v0

    iput-object v0, p0, Lo/setOnCloseListener;->onPostMessage:Lo/setOnSuggestionListener;

    .line 74
    :try_start_0
    invoke-virtual {p0, p1}, Lo/setOnCloseListener;->onMessageChannelReady(Lo/setOnCloseListener$onMessageChannelReady;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 76
    iget-object v0, p0, Lo/setOnCloseListener;->onPostMessage:Lo/setOnSuggestionListener;

    sget-object v1, Lo/setOnCloseListener;->IPostMessageService:Ljava/lang/String;

    .line 1010
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 1011
    new-instance v3, Ljava/io/PrintWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1012
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1013
    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1061
    iget-boolean v0, v0, Lo/setOnSuggestionListener;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 1062
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1064
    :cond_0
    sget-object v0, Lo/setOnSuggestionListener;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lo/setOnCloseListener;->onMessageChannelReady()V

    .line 196
    new-instance v0, Lo/clearFocus$ICustomTabsCallback;

    invoke-direct {v0}, Lo/clearFocus$ICustomTabsCallback;-><init>()V

    iget-object v1, p0, Lo/setOnCloseListener;->AudioAttributesCompatParcelizer:Lo/preload;

    .line 5097
    iput-object v1, v0, Lo/clearFocus$ICustomTabsCallback;->asInterface:Lo/preload;

    .line 197
    iget-object v1, p0, Lo/setOnCloseListener;->read:Lo/preload;

    .line 5102
    iput-object v1, v0, Lo/clearFocus$ICustomTabsCallback;->onRelationshipValidationResult:Lo/preload;

    .line 198
    iget-object v1, p0, Lo/setOnCloseListener;->setDefaultImpl:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 6077
    iput-object v1, v0, Lo/clearFocus$ICustomTabsCallback;->onMessageChannelReady:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 199
    iget-object v1, p0, Lo/setOnCloseListener;->extraCallback:Lo/setSearchableInfo;

    .line 7067
    iput-object v1, v0, Lo/clearFocus$ICustomTabsCallback;->extraCallback:Lo/setSearchableInfo;

    .line 200
    iget v1, p0, Lo/setOnCloseListener;->write:I

    .line 7107
    iput v1, v0, Lo/clearFocus$ICustomTabsCallback;->onTransact:I

    .line 201
    iget v1, p0, Lo/setOnCloseListener;->onRelationshipValidationResult:I

    .line 7132
    iput v1, v0, Lo/clearFocus$ICustomTabsCallback;->warmup:I

    .line 202
    iget v1, p0, Lo/setOnCloseListener;->ICustomTabsCallback:I

    .line 8127
    iput v1, v0, Lo/clearFocus$ICustomTabsCallback;->ICustomTabsService:I

    .line 204
    iget v1, p0, Lo/setOnCloseListener;->connect:I

    .line 9137
    iput v1, v0, Lo/clearFocus$ICustomTabsCallback;->extraCommand:I

    .line 205
    iget v1, p0, Lo/setOnCloseListener;->disconnect:I

    .line 10122
    iput v1, v0, Lo/clearFocus$ICustomTabsCallback;->newSession:I

    .line 206
    iget-object v1, p0, Lo/setOnCloseListener;->INotificationSideChannel$Stub$Proxy:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 11082
    iput-object v1, v0, Lo/clearFocus$ICustomTabsCallback;->onNavigationEvent:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 207
    iget v1, p0, Lo/setOnCloseListener;->RemoteActionCompatParcelizer:I

    .line 11112
    iput v1, v0, Lo/clearFocus$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:I

    .line 208
    iget v1, p0, Lo/setOnCloseListener;->AudioAttributesImplBaseParcelizer:I

    .line 11117
    iput v1, v0, Lo/clearFocus$ICustomTabsCallback;->getInterfaceDescriptor:I

    .line 209
    iget v1, p0, Lo/setOnCloseListener;->RemoteActionCompatParcelizer:I

    .line 12112
    iput v1, v0, Lo/clearFocus$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:I

    .line 210
    iget-object v1, p0, Lo/setOnCloseListener;->INotificationSideChannel$Default:[Z

    .line 13072
    iput-object v1, v0, Lo/clearFocus$ICustomTabsCallback;->ICustomTabsCallback:[Z

    .line 211
    iget-object v1, p0, Lo/setOnCloseListener;->INotificationSideChannel$Stub:Lo/preload;

    .line 13087
    iput-object v1, v0, Lo/clearFocus$ICustomTabsCallback;->asBinder:Lo/preload;

    .line 212
    iget-object v1, p0, Lo/setOnCloseListener;->IconCompatParcelizer:Lo/preload;

    .line 13092
    iput-object v1, v0, Lo/clearFocus$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/preload;

    .line 213
    iget-object v1, p0, Lo/setOnCloseListener;->notify:Lo/requestFocus;

    .line 14062
    iput-object v1, v0, Lo/clearFocus$ICustomTabsCallback;->onPostMessage:Lo/requestFocus;

    .line 214
    iput-object v0, p0, Lo/setOnCloseListener;->MediaBrowserCompat:Lo/clearFocus$ICustomTabsCallback;

    return-void
.end method

.method private extraCallback()V
    .locals 2

    .line 174
    new-instance v0, Lo/getInputType$onMessageChannelReady;

    invoke-direct {v0}, Lo/getInputType$onMessageChannelReady;-><init>()V

    iget-object v1, p0, Lo/setOnCloseListener;->cancelAll:Lo/getImeOptions;

    .line 2038
    iput-object v1, v0, Lo/getInputType$onMessageChannelReady;->extraCallback:Lo/getImeOptions;

    .line 175
    iget v1, p0, Lo/setOnCloseListener;->cancel:I

    .line 2046
    iput v1, v0, Lo/getInputType$onMessageChannelReady;->onPostMessage:I

    .line 176
    iget-object v1, p0, Lo/setOnCloseListener;->notify:Lo/requestFocus;

    .line 2050
    iput-object v1, v0, Lo/getInputType$onMessageChannelReady;->ICustomTabsCallback:Lo/requestFocus;

    .line 177
    iget-object v1, p0, Lo/setOnCloseListener;->IPostMessageService$Stub$Proxy:Lo/getImeOptions;

    .line 3042
    iput-object v1, v0, Lo/getInputType$onMessageChannelReady;->onNavigationEvent:Lo/getImeOptions;

    .line 178
    iget-object v1, p0, Lo/setOnCloseListener;->getDefaultImpl:Ljava/lang/String;

    .line 4034
    iput-object v1, v0, Lo/getInputType$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 179
    iget v1, p0, Lo/setOnCloseListener;->ICustomTabsCallback:I

    .line 5030
    iput v1, v0, Lo/getInputType$onMessageChannelReady;->asBinder:I

    .line 5054
    new-instance v1, Lo/getInputType;

    invoke-direct {v1, v0}, Lo/getInputType;-><init>(Lo/getInputType$onMessageChannelReady;)V

    return-void
.end method

.method private onMessageChannelReady()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    iget v0, p0, Lo/setOnCloseListener;->disconnect:I

    .line 154
    iget v1, p0, Lo/setOnCloseListener;->AudioAttributesImplBaseParcelizer:I

    .line 155
    iget v2, p0, Lo/setOnCloseListener;->requestPostMessageChannel:I

    iget v3, p0, Lo/setOnCloseListener;->onRelationshipValidationResult:I

    mul-int v2, v2, v3

    .line 156
    new-instance v3, Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    iget-object v4, p0, Lo/setOnCloseListener;->onNavigationEvent:[D

    iget v5, p0, Lo/setOnCloseListener;->onTransact:I

    invoke-direct {v3, v4, v0, v5, v2}, Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;-><init>([DIII)V

    iput-object v3, p0, Lo/setOnCloseListener;->setDefaultImpl:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 163
    new-instance v0, Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    iget-object v3, p0, Lo/setOnCloseListener;->onMessageChannelReady:[D

    iget v4, p0, Lo/setOnCloseListener;->onTransact:I

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;-><init>([DIII)V

    iput-object v0, p0, Lo/setOnCloseListener;->INotificationSideChannel$Stub$Proxy:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 167
    new-instance v0, Lo/preload;

    iget v1, p0, Lo/setOnCloseListener;->IPostMessageService$Stub:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/preload;-><init>(IZ)V

    iput-object v0, p0, Lo/setOnCloseListener;->INotificationSideChannel$Stub:Lo/preload;

    .line 168
    new-instance v0, Lo/preload;

    iget v1, p0, Lo/setOnCloseListener;->IPostMessageService$Stub:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lo/preload;-><init>(IZ)V

    iput-object v0, p0, Lo/setOnCloseListener;->IconCompatParcelizer:Lo/preload;

    .line 169
    new-instance v0, Lo/preload;

    iget v1, p0, Lo/setOnCloseListener;->mayLaunchUrl:I

    invoke-direct {v0, v1, v2}, Lo/preload;-><init>(IZ)V

    iput-object v0, p0, Lo/setOnCloseListener;->AudioAttributesCompatParcelizer:Lo/preload;

    .line 170
    new-instance v0, Lo/preload;

    iget v1, p0, Lo/setOnCloseListener;->mayLaunchUrl:I

    invoke-direct {v0, v1, v3}, Lo/preload;-><init>(IZ)V

    iput-object v0, p0, Lo/setOnCloseListener;->read:Lo/preload;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final onMessageChannelReady(Lo/setOnCloseListener$onMessageChannelReady;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lo/setOnCloseListener;->ICustomTabsCallback()V

    .line 142
    sget-object v0, Lo/setOnCloseListener$onMessageChannelReady;->onNavigationEvent:Lo/setOnCloseListener$onMessageChannelReady;

    if-ne p1, v0, :cond_0

    .line 143
    invoke-direct {p0}, Lo/setOnCloseListener;->ICustomTabsCallback$Stub()V

    return-void

    .line 144
    :cond_0
    sget-object v0, Lo/setOnCloseListener$onMessageChannelReady;->onPostMessage:Lo/setOnCloseListener$onMessageChannelReady;

    if-ne p1, v0, :cond_1

    .line 145
    invoke-direct {p0}, Lo/setOnCloseListener;->extraCallback()V

    return-void

    .line 147
    :cond_1
    invoke-direct {p0}, Lo/setOnCloseListener;->extraCallback()V

    .line 148
    invoke-direct {p0}, Lo/setOnCloseListener;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lo/setOnCloseListener;->onNavigationEvent:[D

    array-length v0, v0

    iput v0, p0, Lo/setOnCloseListener;->write:I

    .line 82
    iget-object v0, p0, Lo/setOnCloseListener;->onMessageChannelReady:[D

    array-length v0, v0

    iput v0, p0, Lo/setOnCloseListener;->RemoteActionCompatParcelizer:I

    .line 84
    iget-wide v0, p0, Lo/setOnCloseListener;->ICustomTabsCallback$Stub$Proxy:D

    iget v2, p0, Lo/setOnCloseListener;->onTransact:I

    int-to-double v2, v2

    mul-double v0, v0, v2

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    .line 84
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v5, v0

    .line 86
    div-int/lit8 v0, v5, 0x2

    .line 87
    iget v1, p0, Lo/setOnCloseListener;->updateVisuals:I

    mul-int v1, v1, v0

    iput v1, p0, Lo/setOnCloseListener;->disconnect:I

    .line 90
    iget-wide v0, p0, Lo/setOnCloseListener;->postMessage:D

    iget v4, p0, Lo/setOnCloseListener;->onTransact:I

    int-to-double v6, v4

    mul-double v0, v0, v6

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v0, v6

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    .line 90
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 94
    iget v0, p0, Lo/setOnCloseListener;->extraCommand:I

    mul-int v0, v0, v1

    iput v0, p0, Lo/setOnCloseListener;->AudioAttributesImplBaseParcelizer:I

    .line 96
    iget v2, p0, Lo/setOnCloseListener;->ICustomTabsCallback:I

    iget v3, p0, Lo/setOnCloseListener;->disconnect:I

    mul-int v2, v2, v3

    add-int/2addr v2, v0

    iput v2, p0, Lo/setOnCloseListener;->connect:I

    .line 98
    iget-object v0, p0, Lo/setOnCloseListener;->onMessageChannelReady:[D

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lo/setOnCloseListener;->INotificationSideChannel$Default:[Z

    const-string v0, ""

    .line 99
    iput-object v0, p0, Lo/setOnCloseListener;->getDefaultImpl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 100
    :goto_0
    iget-object v2, p0, Lo/setOnCloseListener;->onMessageChannelReady:[D

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/setOnCloseListener;->getDefaultImpl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/setOnCloseListener;->getDefaultImpl:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lo/setOnCloseListener;->INotificationSideChannel$Default:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Lo/setInputType;

    iget-object v2, p0, Lo/setOnCloseListener;->warmup:[Ljava/lang/String;

    iget-object v3, p0, Lo/setOnCloseListener;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lo/setInputType;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/setOnCloseListener;->notify:Lo/requestFocus;

    .line 106
    iget v0, p0, Lo/setOnCloseListener;->onRelationshipValidationResult:I

    iget v2, p0, Lo/setOnCloseListener;->ICustomTabsService$Stub:I

    mul-int v0, v0, v2

    iput v0, p0, Lo/setOnCloseListener;->INotificationSideChannel:I

    .line 107
    iput v2, p0, Lo/setOnCloseListener;->cancel:I

    .line 111
    new-instance v0, Lo/getImeOptions;

    iget v6, p0, Lo/setOnCloseListener;->INotificationSideChannel:I

    iget-object v7, p0, Lo/setOnCloseListener;->onNavigationEvent:[D

    iget v2, p0, Lo/setOnCloseListener;->onTransact:I

    int-to-float v8, v2

    iget v9, p0, Lo/setOnCloseListener;->cancel:I

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lo/getImeOptions;-><init>(II[DFI)V

    iput-object v0, p0, Lo/setOnCloseListener;->IPostMessageService$Stub$Proxy:Lo/getImeOptions;

    .line 113
    new-instance v0, Lo/getImeOptions;

    iget-object v9, p0, Lo/setOnCloseListener;->onMessageChannelReady:[D

    array-length v8, v9

    iget v2, p0, Lo/setOnCloseListener;->onTransact:I

    int-to-float v10, v2

    const/4 v11, 0x2

    move-object v6, v0

    move v7, v1

    invoke-direct/range {v6 .. v11}, Lo/getImeOptions;-><init>(II[DFI)V

    iput-object v0, p0, Lo/setOnCloseListener;->cancelAll:Lo/getImeOptions;

    return-void
.end method

.method public final onPostMessage()Lo/getSuggestionsAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    new-instance v0, Lo/setIconified;

    iget-object v1, p0, Lo/setOnCloseListener;->MediaBrowserCompat:Lo/clearFocus$ICustomTabsCallback;

    .line 14147
    new-instance v2, Lo/clearFocus;

    invoke-direct {v2, v1}, Lo/clearFocus;-><init>(Lo/clearFocus$ICustomTabsCallback;)V

    .line 220
    iget v1, p0, Lo/setOnCloseListener;->onTransact:I

    iget v3, p0, Lo/setOnCloseListener;->ICustomTabsService$Stub$Proxy:I

    iget v4, p0, Lo/setOnCloseListener;->validateRelationship:I

    invoke-direct {v0, v2, v1, v3, v4}, Lo/setIconified;-><init>(Lo/clearFocus;III)V

    return-object v0
.end method
