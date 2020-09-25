.class public final enum Lo/initLifecycle;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/initLifecycle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/initLifecycle;

.field private static final synthetic ICustomTabsService:[Lo/initLifecycle;

.field private static asInterface:Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback$Stub:Z

.field public asBinder:Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;

.field public extraCallback:J

.field private getInterfaceDescriptor:Z

.field private newSession:Z

.field public onMessageChannelReady:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

.field public onNavigationEvent:Lcom/dreamplug/deviceattributes/CarrierFingerPrint;

.field public onPostMessage:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

.field public onRelationshipValidationResult:Lo/getArguments;

.field public onTransact:Landroid/content/SharedPreferences;

.field private warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lo/initLifecycle;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lo/initLifecycle;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/initLifecycle;->ICustomTabsCallback:Lo/initLifecycle;

    const/4 v1, 0x1

    new-array v1, v1, [Lo/initLifecycle;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 24
    sput-object v1, Lo/initLifecycle;->ICustomTabsService:[Lo/initLifecycle;

    .line 27
    const-class v0, Lo/initLifecycle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/initLifecycle;->asInterface:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lo/initLifecycle;->extraCallback:J

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/initLifecycle;)V
    .locals 1

    const/4 v0, 0x1

    .line 9124
    iput-boolean v0, p0, Lo/initLifecycle;->ICustomTabsCallback$Stub:Z

    .line 9125
    invoke-direct {p0}, Lo/initLifecycle;->onNavigationEvent()V

    return-void
.end method

.method static synthetic extraCallback(Lo/initLifecycle;)V
    .locals 1

    const/4 v0, 0x1

    .line 9134
    iput-boolean v0, p0, Lo/initLifecycle;->getInterfaceDescriptor:Z

    .line 9135
    invoke-direct {p0}, Lo/initLifecycle;->onNavigationEvent()V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/initLifecycle;)V
    .locals 1

    const/4 v0, 0x1

    .line 10129
    iput-boolean v0, p0, Lo/initLifecycle;->warmup:Z

    .line 10130
    invoke-direct {p0}, Lo/initLifecycle;->onNavigationEvent()V

    return-void
.end method

.method private onNavigationEvent()V
    .locals 7

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/initLifecycle;->extraCallback:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lo/initLifecycle;->onPostMessage:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lo/initLifecycle;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lo/initLifecycle;->warmup:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lo/initLifecycle;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lo/initLifecycle;->newSession:Z

    if-eqz v0, :cond_4

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/initLifecycle;->asInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "after  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lo/initLifecycle;->onPostMessage:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tag"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    invoke-static {v0, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo/initLifecycle;->asInterface:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lo/initLifecycle;->onMessageChannelReady:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2065
    invoke-static {v0, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo/initLifecycle;->asInterface:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/initLifecycle;->onNavigationEvent:Lcom/dreamplug/deviceattributes/CarrierFingerPrint;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3065
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/dreamplug/deviceattributes/models/Device;

    iget-object v1, p0, Lo/initLifecycle;->onPostMessage:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

    iget-object v1, v1, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->imei:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dreamplug/deviceattributes/models/Device;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/dreamplug/deviceattributes/models/AppFingerprint;

    .line 3190
    iget-object v2, p0, Lo/initLifecycle;->onTransact:Landroid/content/SharedPreferences;

    const-string v3, "Did you forget to call init()"

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    const-string v5, "FCM_TOKEN"

    .line 3191
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-direct {v1, v2}, Lcom/dreamplug/deviceattributes/models/AppFingerprint;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lo/initLifecycle;->asBinder:Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;

    .line 4190
    iget-object v6, p0, Lo/initLifecycle;->onTransact:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_2

    .line 4191
    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->setFcmToken(Ljava/lang/String;)V

    .line 94
    new-instance v2, Lcom/dreamplug/deviceattributes/models/InternalAttributes;

    iget-object v3, p0, Lo/initLifecycle;->onPostMessage:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

    iget-object v4, p0, Lo/initLifecycle;->onMessageChannelReady:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    iget-object v5, p0, Lo/initLifecycle;->onNavigationEvent:Lcom/dreamplug/deviceattributes/CarrierFingerPrint;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/dreamplug/deviceattributes/models/InternalAttributes;-><init>(Lcom/dreamplug/deviceattributes/DeviceFingerPrint;Lcom/dreamplug/deviceattributes/LocationFingerPrint;Lcom/dreamplug/deviceattributes/CarrierFingerPrint;Lcom/dreamplug/deviceattributes/models/AppFingerprint;)V

    .line 95
    new-instance v1, Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;-><init>(Ljava/lang/Integer;Lcom/dreamplug/deviceattributes/models/InternalAttributes;)V

    .line 96
    new-instance v2, Lcom/dreamplug/deviceattributes/models/AttributesClass;

    iget-object v3, p0, Lo/initLifecycle;->asBinder:Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;

    invoke-direct {v2, v0, v3, v1}, Lcom/dreamplug/deviceattributes/models/AttributesClass;-><init>(Lcom/dreamplug/deviceattributes/models/Device;Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;Lcom/dreamplug/deviceattributes/models/AuxiliaryAttributes;)V

    .line 98
    iget-object v0, p0, Lo/initLifecycle;->onRelationshipValidationResult:Lo/getArguments;

    invoke-interface {v0, v2}, Lo/getArguments;->onPostMessage(Lcom/dreamplug/deviceattributes/models/AttributesClass;)V

    goto :goto_0

    .line 4193
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3193
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic onNavigationEvent(Lo/initLifecycle;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/initLifecycle;->onNavigationEvent()V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/initLifecycle;
    .locals 1

    .line 24
    const-class v0, Lo/initLifecycle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/initLifecycle;

    return-object p0
.end method

.method public static values()[Lo/initLifecycle;
    .locals 1

    .line 24
    sget-object v0, Lo/initLifecycle;->ICustomTabsService:[Lo/initLifecycle;

    invoke-virtual {v0}, [Lo/initLifecycle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/initLifecycle;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 3

    .line 7190
    iget-object v0, p0, Lo/initLifecycle;->onTransact:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "APP_EXTERNAL_ID"

    .line 7191
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7193
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call init()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 5190
    iget-object v0, p0, Lo/initLifecycle;->onTransact:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "FCM_TOKEN"

    .line 5191
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    invoke-virtual {p0, v2, p1}, Lo/initLifecycle;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lo/initLifecycle;->newSession:Z

    .line 201
    invoke-direct {p0}, Lo/initLifecycle;->onNavigationEvent()V

    goto :goto_0

    .line 5193
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Did you forget to call init()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 3

    .line 6190
    iget-object v0, p0, Lo/initLifecycle;->onTransact:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "FCM_TOKEN"

    .line 6191
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6193
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call init()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 3

    .line 8190
    iget-object v0, p0, Lo/initLifecycle;->onTransact:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "DEVICE_EXTERNAL_ID"

    .line 8191
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8193
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call init()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lo/initLifecycle;->onTransact:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Did you forget to call init()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 3

    .line 74
    iget-object v0, p0, Lo/initLifecycle;->onTransact:Landroid/content/SharedPreferences;

    const-string v1, "INSTALL_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v1, v0}, Lo/initLifecycle;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
