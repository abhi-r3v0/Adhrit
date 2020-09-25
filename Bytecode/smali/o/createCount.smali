.class public Lo/createCount;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/createCount$onPostMessage;,
        Lo/createCount$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field private ICustomTabsCallback$Stub:Landroid/nfc/Tag;

.field private asBinder:Lo/createCount$onPostMessage;

.field public extraCallback:Ljava/lang/String;

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Lo/superDispatchKeyEvent;

.field private onRelationshipValidationResult:Lo/setGuidelineEnd;

.field private onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    sget-object v0, Lo/values;->onNavigationEvent:Lo/values;

    .line 56
    sget-object v0, Lo/values;->onMessageChannelReady:Lo/values;

    .line 57
    sget-object v0, Lo/values;->extraCallback:Lo/values;

    .line 58
    sget-object v0, Lo/values;->onPostMessage:Lo/values;

    .line 59
    sget-object v0, Lo/values;->ICustomTabsCallback:Lo/values;

    .line 60
    sget-object v0, Lo/values;->onTransact:Lo/values;

    .line 61
    sget-object v0, Lo/values;->asInterface:Lo/values;

    .line 62
    sget-object v0, Lo/values;->ICustomTabsCallback$Stub:Lo/values;

    .line 63
    sget-object v0, Lo/values;->asBinder:Lo/values;

    .line 64
    sget-object v0, Lo/values;->onRelationshipValidationResult:Lo/values;

    .line 65
    sget-object v0, Lo/values;->newSession:Lo/values;

    .line 66
    sget-object v0, Lo/values;->ICustomTabsCallback$Stub$Proxy:Lo/values;

    .line 67
    sget-object v0, Lo/values;->ICustomTabsService:Lo/values;

    .line 68
    sget-object v0, Lo/values;->getInterfaceDescriptor:Lo/values;

    .line 69
    sget-object v0, Lo/values;->warmup:Lo/values;

    .line 70
    sget-object v0, Lo/values;->updateVisuals:Lo/values;

    .line 71
    sget-object v0, Lo/values;->mayLaunchUrl:Lo/values;

    .line 72
    sget-object v0, Lo/values;->postMessage:Lo/values;

    .line 73
    sget-object v0, Lo/values;->requestPostMessageChannel:Lo/values;

    .line 74
    sget-object v0, Lo/values;->extraCommand:Lo/values;

    .line 75
    sget-object v0, Lo/values;->IPostMessageService$Stub:Lo/values;

    .line 76
    sget-object v0, Lo/values;->IPostMessageService:Lo/values;

    .line 77
    sget-object v0, Lo/values;->validateRelationship:Lo/values;

    .line 78
    sget-object v0, Lo/values;->ICustomTabsService$Stub:Lo/values;

    .line 79
    sget-object v0, Lo/values;->ICustomTabsService$Stub$Proxy:Lo/values;

    .line 80
    sget-object v0, Lo/values;->IPostMessageService$Stub$Proxy:Lo/values;

    .line 81
    sget-object v0, Lo/values;->cancel:Lo/values;

    .line 82
    sget-object v0, Lo/values;->notify:Lo/values;

    .line 83
    sget-object v0, Lo/values;->cancelAll:Lo/values;

    return-void
.end method

.method private constructor <init>(Lo/createCount$onMessageChannelReady;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 97
    new-instance v0, Lo/superDispatchKeyEvent;

    invoke-direct {v0}, Lo/superDispatchKeyEvent;-><init>()V

    iput-object v0, p0, Lo/createCount;->onPostMessage:Lo/superDispatchKeyEvent;

    .line 1024
    iget-object v0, p1, Lo/createCount$onMessageChannelReady;->onMessageChannelReady:Landroid/nfc/Tag;

    .line 108
    iput-object v0, p0, Lo/createCount;->ICustomTabsCallback$Stub:Landroid/nfc/Tag;

    if-eqz v0, :cond_2

    .line 2024
    iget-object p1, p1, Lo/createCount$onMessageChannelReady;->onNavigationEvent:Lo/createCount$onPostMessage;

    .line 110
    iput-object p1, p0, Lo/createCount;->asBinder:Lo/createCount$onPostMessage;

    .line 112
    :try_start_0
    iget-object p1, p0, Lo/createCount;->ICustomTabsCallback$Stub:Landroid/nfc/Tag;

    invoke-virtual {p1}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG: Tech [android.nfc.tech.IsoDep, android.nfc.tech.NfcA]"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/createCount;->ICustomTabsCallback$Stub:Landroid/nfc/Tag;

    invoke-virtual {p1}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG: Tech [android.nfc.tech.IsoDep, android.nfc.tech.NfcB]"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-direct {p0}, Lo/createCount;->onNavigationEvent()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 113
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public synthetic constructor <init>(Lo/createCount$onMessageChannelReady;B)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lo/createCount;-><init>(Lo/createCount$onMessageChannelReady;)V

    return-void
.end method

.method private varargs onMessageChannelReady()Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    .line 3191
    :try_start_0
    iget-object v1, p0, Lo/createCount;->ICustomTabsCallback$Stub:Landroid/nfc/Tag;

    invoke-static {v1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v2, 0x0

    .line 3196
    iput-boolean v2, p0, Lo/createCount;->onTransact:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    .line 3200
    :try_start_1
    invoke-virtual {v1}, Landroid/nfc/tech/IsoDep;->connect()V

    .line 3202
    iget-object v4, p0, Lo/createCount;->onPostMessage:Lo/superDispatchKeyEvent;

    .line 4022
    iput-object v1, v4, Lo/superDispatchKeyEvent;->ICustomTabsCallback:Landroid/nfc/tech/IsoDep;

    .line 3204
    new-instance v1, Lo/setStatusBarBackgroundResource;

    iget-object v4, p0, Lo/createCount;->onPostMessage:Lo/superDispatchKeyEvent;

    invoke-direct {v1, v4}, Lo/setStatusBarBackgroundResource;-><init>(Lo/setStatusBarBackground;)V

    .line 4201
    sget-object v4, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    invoke-interface {v4}, Lo/currentHashLength;->onPostMessage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4202
    sget-object v4, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    const-string v5, "Try to read card with Payment System Environment"

    invoke-interface {v4, v5}, Lo/currentHashLength;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 5115
    :cond_0
    sget-object v4, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    invoke-interface {v4}, Lo/currentHashLength;->onPostMessage()Z

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "PPSE"

    const-string v6, "PSE"

    if-eqz v4, :cond_2

    .line 5116
    :try_start_2
    sget-object v4, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Select "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v1, Lo/setStatusBarBackgroundResource;->onNavigationEvent:Z

    if-eqz v8, :cond_1

    move-object v8, v5

    goto :goto_0

    :cond_1
    move-object v8, v6

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Application"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lo/currentHashLength;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 5119
    :cond_2
    iget-object v4, v1, Lo/setStatusBarBackgroundResource;->onPostMessage:Lo/setStatusBarBackground;

    new-instance v7, Lo/setSelectedTextTypeface;

    sget-object v8, Lo/setAllowsGoneWidget;->ICustomTabsCallback:Lo/setAllowsGoneWidget;

    iget-boolean v9, v1, Lo/setStatusBarBackgroundResource;->onNavigationEvent:Z

    if-eqz v9, :cond_3

    sget-object v9, Lo/setStatusBarBackgroundResource;->onMessageChannelReady:[B

    goto :goto_1

    :cond_3
    sget-object v9, Lo/setStatusBarBackgroundResource;->ICustomTabsCallback:[B

    :goto_1
    invoke-direct {v7, v8, v9}, Lo/setSelectedTextTypeface;-><init>(Lo/setAllowsGoneWidget;[B)V

    invoke-virtual {v7}, Lo/setSelectedTextTypeface;->onNavigationEvent()[B

    move-result-object v7

    invoke-interface {v4, v7}, Lo/setStatusBarBackground;->onNavigationEvent([B)[B

    move-result-object v4

    .line 6027
    sget-object v7, Lo/setReferencedIds;->extraCallback:Lo/setReferencedIds;

    invoke-static {v4, v7}, Lo/extraCallback;->onNavigationEvent([BLo/setReferencedIds;)Z

    move-result v7

    if-eqz v7, :cond_d

    new-array v5, v3, [Lo/setMinHeight;

    .line 6155
    sget-object v6, Lo/setTag;->extraCallback:Lo/setMinHeight;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lo/instantiateActivity;->ICustomTabsCallback([B[Lo/setMinHeight;)[B

    move-result-object v5

    if-eqz v5, :cond_7

    if-eqz v5, :cond_6

    .line 7049
    array-length v4, v5

    invoke-static {v5, v4}, Lo/extraCallback$ICustomTabsCallback;->ICustomTabsCallback([BI)I

    move-result v4

    .line 6160
    sget-object v5, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    invoke-interface {v5}, Lo/currentHashLength;->onPostMessage()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6161
    sget-object v5, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    const-string v6, "SFI found:"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lo/currentHashLength;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 6163
    :cond_4
    iget-object v5, v1, Lo/setStatusBarBackgroundResource;->onPostMessage:Lo/setStatusBarBackground;

    new-instance v6, Lo/setSelectedTextTypeface;

    sget-object v7, Lo/setAllowsGoneWidget;->onNavigationEvent:Lo/setAllowsGoneWidget;

    shl-int/lit8 v8, v4, 0x3

    or-int/lit8 v8, v8, 0x4

    invoke-direct {v6, v7, v4, v8, v2}, Lo/setSelectedTextTypeface;-><init>(Lo/setAllowsGoneWidget;III)V

    invoke-virtual {v6}, Lo/setSelectedTextTypeface;->onNavigationEvent()[B

    move-result-object v6

    invoke-interface {v5, v6}, Lo/setStatusBarBackground;->onNavigationEvent([B)[B

    move-result-object v5

    .line 6165
    sget-object v6, Lo/setReferencedIds;->onPostMessage:Lo/setReferencedIds;

    invoke-static {v5, v6}, Lo/extraCallback;->onNavigationEvent([BLo/setReferencedIds;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6166
    iget-object v6, v1, Lo/setStatusBarBackgroundResource;->onPostMessage:Lo/setStatusBarBackground;

    new-instance v7, Lo/setSelectedTextTypeface;

    sget-object v9, Lo/setAllowsGoneWidget;->onNavigationEvent:Lo/setAllowsGoneWidget;

    array-length v10, v5

    sub-int/2addr v10, v3

    aget-byte v5, v5, v10

    invoke-direct {v7, v9, v4, v8, v5}, Lo/setSelectedTextTypeface;-><init>(Lo/setAllowsGoneWidget;III)V

    invoke-virtual {v7}, Lo/setSelectedTextTypeface;->onNavigationEvent()[B

    move-result-object v4

    invoke-interface {v6, v4}, Lo/setStatusBarBackground;->onNavigationEvent([B)[B

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v5

    goto :goto_2

    .line 7047
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter \'byteArray\' cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6170
    :cond_7
    sget-object v5, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    invoke-interface {v5}, Lo/currentHashLength;->onPostMessage()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6171
    sget-object v5, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    const-string v6, "(FCI) Issuer Discretionary Data is already present"

    invoke-interface {v5, v6}, Lo/currentHashLength;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 8027
    :cond_8
    :goto_2
    sget-object v5, Lo/setReferencedIds;->extraCallback:Lo/setReferencedIds;

    invoke-static {v4, v5}, Lo/extraCallback;->onNavigationEvent([BLo/setReferencedIds;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 4212
    invoke-static {v4}, Lo/setStatusBarBackgroundResource;->onMessageChannelReady([B)Ljava/util/List;

    move-result-object v5

    .line 4213
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 8182
    sget-object v7, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    invoke-interface {v7}, Lo/currentHashLength;->onPostMessage()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 8183
    sget-object v7, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    const-string v8, "Extract Application label"

    invoke-interface {v7, v8}, Lo/currentHashLength;->ICustomTabsCallback(Ljava/lang/String;)V

    :cond_a
    new-array v7, v3, [Lo/setMinHeight;

    .line 8186
    sget-object v8, Lo/setTag;->ICustomTabsCallback:Lo/setMinHeight;

    aput-object v8, v7, v2

    invoke-static {v4, v7}, Lo/instantiateActivity;->ICustomTabsCallback([B[Lo/setMinHeight;)[B

    move-result-object v7

    if-eqz v7, :cond_b

    .line 8188
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    goto :goto_3

    :cond_b
    move-object v8, v0

    .line 4214
    :goto_3
    invoke-virtual {v1, v6, v8}, Lo/setStatusBarBackgroundResource;->onPostMessage([BLjava/lang/String;)Z

    move-result v6

    if-ne v6, v3, :cond_9

    :cond_c
    move v2, v6

    if-nez v2, :cond_f

    .line 4220
    iget-object v4, v1, Lo/setStatusBarBackgroundResource;->asInterface:Lo/setGuidelineEnd;

    .line 8309
    iput-boolean v3, v4, Lo/setGuidelineEnd;->onMessageChannelReady:Z

    goto :goto_5

    .line 4223
    :cond_d
    sget-object v4, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    invoke-interface {v4}, Lo/currentHashLength;->onPostMessage()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4224
    sget-object v4, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v8, v1, Lo/setStatusBarBackgroundResource;->onNavigationEvent:Z

    if-eqz v8, :cond_e

    goto :goto_4

    :cond_e
    move-object v5, v6

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found -> Use kown AID"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lo/currentHashLength;->ICustomTabsCallback(Ljava/lang/String;)V

    :cond_f
    :goto_5
    if-nez v2, :cond_10

    .line 4103
    invoke-virtual {v1}, Lo/setStatusBarBackgroundResource;->onNavigationEvent()V

    .line 4105
    :cond_10
    iget-object v1, v1, Lo/setStatusBarBackgroundResource;->asInterface:Lo/setGuidelineEnd;

    .line 3205
    iput-object v1, p0, Lo/createCount;->onRelationshipValidationResult:Lo/setGuidelineEnd;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    .line 3207
    :catch_0
    :try_start_3
    iput-boolean v3, p0, Lo/createCount;->onTransact:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    .line 3209
    :goto_6
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 158
    const-class v1, Lo/createCount;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_7
    return-object v0
.end method

.method private onNavigationEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lo/createCount;->asBinder:Lo/createCount$onPostMessage;

    .line 214
    iput-object v0, p0, Lo/createCount;->onPostMessage:Lo/superDispatchKeyEvent;

    .line 215
    iput-object v0, p0, Lo/createCount;->onRelationshipValidationResult:Lo/setGuidelineEnd;

    .line 216
    iput-object v0, p0, Lo/createCount;->ICustomTabsCallback$Stub:Landroid/nfc/Tag;

    .line 217
    iput-object v0, p0, Lo/createCount;->ICustomTabsCallback:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Lo/createCount;->onMessageChannelReady:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lo/createCount;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/createCount;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 166
    iget-boolean p1, p0, Lo/createCount;->onTransact:Z

    if-nez p1, :cond_1

    .line 167
    iget-object p1, p0, Lo/createCount;->onRelationshipValidationResult:Lo/setGuidelineEnd;

    if-eqz p1, :cond_1

    .line 9142
    iget-object p1, p1, Lo/setGuidelineEnd;->extraCallback:Ljava/lang/String;

    .line 168
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lo/createCount;->onRelationshipValidationResult:Lo/setGuidelineEnd;

    .line 10142
    iget-object p1, p1, Lo/setGuidelineEnd;->extraCallback:Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lo/createCount;->ICustomTabsCallback:Ljava/lang/String;

    .line 170
    iget-object p1, p0, Lo/createCount;->onRelationshipValidationResult:Lo/setGuidelineEnd;

    .line 10161
    iget-object p1, p1, Lo/setGuidelineEnd;->ICustomTabsCallback:Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lo/createCount;->onMessageChannelReady:Ljava/lang/String;

    .line 171
    iget-object p1, p0, Lo/createCount;->onRelationshipValidationResult:Lo/setGuidelineEnd;

    .line 10199
    iget-object p1, p1, Lo/setGuidelineEnd;->onPostMessage:Lo/values;

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/createCount;->extraCallback:Ljava/lang/String;

    .line 172
    iget-object p1, p0, Lo/createCount;->onRelationshipValidationResult:Lo/setGuidelineEnd;

    .line 11123
    iget-object p1, p1, Lo/setGuidelineEnd;->onNavigationEvent:Ljava/lang/String;

    .line 172
    iput-object p1, p0, Lo/createCount;->onNavigationEvent:Ljava/lang/String;

    .line 173
    iget-object p1, p0, Lo/createCount;->extraCallback:Ljava/lang/String;

    sget-object v0, Lo/values;->onNavigationEvent:Lo/values;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "creditCardNfcReader"

    const-string v0, "===========================================================================\n\nHi! This library is not familiar with your credit card. \n Please, write me an email with information of your bank: \ncountry, bank name, card type, etc) and i will try to do my best, \nto add your bank as a known one into this lib. \nGreat thanks for using and reporting!!! \nHere is my email: Nikunj@gmail.com. \n\n==========================================================================="

    .line 174
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object p1, p0, Lo/createCount;->asBinder:Lo/createCount$onPostMessage;

    invoke-interface {p1}, Lo/createCount$onPostMessage;->onMessageChannelReady()V

    .line 187
    :cond_1
    invoke-direct {p0}, Lo/createCount;->onNavigationEvent()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 144
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 146
    iget-object v0, p0, Lo/createCount;->onPostMessage:Lo/superDispatchKeyEvent;

    .line 3027
    iget-object v0, v0, Lo/superDispatchKeyEvent;->onNavigationEvent:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method
