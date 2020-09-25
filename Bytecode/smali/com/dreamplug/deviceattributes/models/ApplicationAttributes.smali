.class public Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private fcmToken:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "fcm_token"
    .end annotation
.end field

.field private identifier:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "identifier"
    .end annotation
.end field

.field private installId:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "install_id"
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "key"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "name"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "type"
    .end annotation
.end field

.field private versionName:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "version_name"
    .end annotation
.end field

.field private versionNumber:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "version_number"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->identifier:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->name:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->versionName:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->versionNumber:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->key:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFcmToken()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->fcmToken:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->installId:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNumber()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->versionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setFcmToken(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->fcmToken:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setInstallId(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->installId:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->type:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->versionName:Ljava/lang/String;

    return-void
.end method

.method public setVersionNumber(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->versionNumber:Ljava/lang/String;

    return-void
.end method
