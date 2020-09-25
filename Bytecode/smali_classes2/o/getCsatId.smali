.class public final Lo/getCsatId;
.super Lo/getTags;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getTags;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getCsatId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Ljava/lang/String;

.field private asBinder:Ljava/lang/String;

.field private asInterface:Z

.field private extraCallback:Ljava/lang/String;

.field private getInterfaceDescriptor:Ljava/lang/String;

.field private newSession:Ljava/lang/String;

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:Ljava/lang/String;

.field private onTransact:Z

.field private postMessage:Ljava/lang/String;

.field private warmup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 148
    new-instance v0, Lo/setCsatId;

    invoke-direct {v0}, Lo/setCsatId;-><init>()V

    sput-object v0, Lo/getCsatId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/getCsatId;->onTransact:Z

    .line 3
    iput-boolean v0, p0, Lo/getCsatId;->asInterface:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/getTags;-><init>()V

    const-string p4, "http://localhost"

    .line 24
    iput-object p4, p0, Lo/getCsatId;->ICustomTabsCallback:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lo/getCsatId;->onPostMessage:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lo/getCsatId;->extraCallback:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lo/getCsatId;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lo/getCsatId;->warmup:Ljava/lang/String;

    .line 29
    iput-object p7, p0, Lo/getCsatId;->newSession:Ljava/lang/String;

    .line 30
    iput-object p8, p0, Lo/getCsatId;->postMessage:Ljava/lang/String;

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lo/getCsatId;->onTransact:Z

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/getCsatId;->extraCallback:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/getCsatId;->warmup:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "idToken, accessToken and authCode cannot all be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1
    :goto_0
    invoke-static {p3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/getCsatId;->onNavigationEvent:Ljava/lang/String;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lo/getCsatId;->onRelationshipValidationResult:Ljava/lang/String;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    iget-object p3, p0, Lo/getCsatId;->onPostMessage:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, "&"

    if-nez p3, :cond_2

    const-string p3, "id_token="

    .line 38
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lo/getCsatId;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_2
    iget-object p3, p0, Lo/getCsatId;->extraCallback:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "access_token="

    .line 40
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lo/getCsatId;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_3
    iget-object p3, p0, Lo/getCsatId;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "identifier="

    .line 42
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lo/getCsatId;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_4
    iget-object p3, p0, Lo/getCsatId;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "oauth_token_secret="

    .line 44
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lo/getCsatId;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_5
    iget-object p3, p0, Lo/getCsatId;->warmup:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "code="

    .line 46
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lo/getCsatId;->warmup:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_6
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "nonce="

    .line 48
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string p3, "providerId="

    .line 49
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lo/getCsatId;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/getCsatId;->asBinder:Ljava/lang/String;

    .line 51
    iput-boolean p2, p0, Lo/getCsatId;->asInterface:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 5
    invoke-direct {p0}, Lo/getTags;-><init>()V

    move-object v1, p1

    .line 6
    iput-object v1, v0, Lo/getCsatId;->ICustomTabsCallback:Ljava/lang/String;

    move-object v1, p2

    .line 7
    iput-object v1, v0, Lo/getCsatId;->onMessageChannelReady:Ljava/lang/String;

    move-object v1, p3

    .line 8
    iput-object v1, v0, Lo/getCsatId;->onPostMessage:Ljava/lang/String;

    move-object v1, p4

    .line 9
    iput-object v1, v0, Lo/getCsatId;->extraCallback:Ljava/lang/String;

    move-object v1, p5

    .line 10
    iput-object v1, v0, Lo/getCsatId;->onNavigationEvent:Ljava/lang/String;

    move-object v1, p6

    .line 11
    iput-object v1, v0, Lo/getCsatId;->onRelationshipValidationResult:Ljava/lang/String;

    move-object v1, p7

    .line 12
    iput-object v1, v0, Lo/getCsatId;->asBinder:Ljava/lang/String;

    move-object v1, p8

    .line 13
    iput-object v1, v0, Lo/getCsatId;->ICustomTabsCallback$Stub:Ljava/lang/String;

    move v1, p9

    .line 14
    iput-boolean v1, v0, Lo/getCsatId;->onTransact:Z

    move v1, p10

    .line 15
    iput-boolean v1, v0, Lo/getCsatId;->asInterface:Z

    move-object v1, p11

    .line 16
    iput-object v1, v0, Lo/getCsatId;->warmup:Ljava/lang/String;

    move-object v1, p12

    .line 17
    iput-object v1, v0, Lo/getCsatId;->ICustomTabsService:Ljava/lang/String;

    move-object v1, p13

    .line 18
    iput-object v1, v0, Lo/getCsatId;->getInterfaceDescriptor:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 19
    iput-object v1, v0, Lo/getCsatId;->newSession:Ljava/lang/String;

    move/from16 v1, p15

    .line 20
    iput-boolean v1, v0, Lo/getCsatId;->ICustomTabsCallback$Stub$Proxy:Z

    move-object/from16 v1, p16

    .line 21
    iput-object v1, v0, Lo/getCsatId;->postMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Lo/getCsatId;
    .locals 0

    .line 57
    iput-object p1, p0, Lo/getCsatId;->newSession:Ljava/lang/String;

    return-object p0
.end method

.method public final onNavigationEvent(Z)Lo/getCsatId;
    .locals 0

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lo/getCsatId;->asInterface:Z

    return-object p0
.end method

.method public final onPostMessage(Z)Lo/getCsatId;
    .locals 0

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lo/getCsatId;->onTransact:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 64
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 66
    iget-object v0, p0, Lo/getCsatId;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 68
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 70
    iget-object v0, p0, Lo/getCsatId;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x3

    .line 72
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 74
    iget-object v0, p0, Lo/getCsatId;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x4

    .line 76
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 78
    iget-object v0, p0, Lo/getCsatId;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x5

    .line 80
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 82
    iget-object v0, p0, Lo/getCsatId;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x6

    .line 84
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 86
    iget-object v0, p0, Lo/getCsatId;->onRelationshipValidationResult:Ljava/lang/String;

    const/4 v2, 0x7

    .line 88
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 90
    iget-object v0, p0, Lo/getCsatId;->asBinder:Ljava/lang/String;

    const/16 v2, 0x8

    .line 92
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 94
    iget-object v0, p0, Lo/getCsatId;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const/16 v2, 0x9

    .line 96
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 98
    iget-boolean v0, p0, Lo/getCsatId;->onTransact:Z

    const/16 v2, 0xa

    .line 99
    invoke-static {p1, v2, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 101
    iget-boolean v0, p0, Lo/getCsatId;->asInterface:Z

    const/16 v2, 0xb

    .line 102
    invoke-static {p1, v2, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 104
    iget-object v0, p0, Lo/getCsatId;->warmup:Ljava/lang/String;

    const/16 v2, 0xc

    .line 106
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 108
    iget-object v0, p0, Lo/getCsatId;->ICustomTabsService:Ljava/lang/String;

    const/16 v2, 0xd

    .line 110
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 112
    iget-object v0, p0, Lo/getCsatId;->getInterfaceDescriptor:Ljava/lang/String;

    const/16 v2, 0xe

    .line 114
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 116
    iget-object v0, p0, Lo/getCsatId;->newSession:Ljava/lang/String;

    const/16 v2, 0xf

    .line 118
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 120
    iget-boolean v0, p0, Lo/getCsatId;->ICustomTabsCallback$Stub$Proxy:Z

    const/16 v2, 0x10

    .line 121
    invoke-static {p1, v2, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    .line 123
    iget-object v0, p0, Lo/getCsatId;->postMessage:Ljava/lang/String;

    const/16 v2, 0x11

    .line 125
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 126
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
