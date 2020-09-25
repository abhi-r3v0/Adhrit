.class public final Lo/TargetNavJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static onNavigationEvent:Lo/TargetNavJsonAdapter;


# instance fields
.field private ICustomTabsCallback:I

.field private asBinder:I

.field private extraCallback:I

.field private onMessageChannelReady:I

.field private onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/TargetNavJsonAdapter;

    invoke-direct {v0}, Lo/TargetNavJsonAdapter;-><init>()V

    sput-object v0, Lo/TargetNavJsonAdapter;->onNavigationEvent:Lo/TargetNavJsonAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()Lo/TargetNavJsonAdapter;
    .locals 1

    sget-object v0, Lo/TargetNavJsonAdapter;->onNavigationEvent:Lo/TargetNavJsonAdapter;

    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 1

    iget v0, p0, Lo/TargetNavJsonAdapter;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/TargetNavJsonAdapter;->ICustomTabsCallback:I

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lo/TargetNavJsonAdapter;->onMessageChannelReady:I

    const-string v2, "ipl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lo/TargetNavJsonAdapter;->extraCallback:I

    const-string v2, "ipds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lo/TargetNavJsonAdapter;->ICustomTabsCallback:I

    const-string v2, "ipde"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lo/TargetNavJsonAdapter;->onPostMessage:I

    const-string v2, "iph"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lo/TargetNavJsonAdapter;->asBinder:I

    const-string v2, "ipm"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final asBinder()I
    .locals 1

    iget v0, p0, Lo/TargetNavJsonAdapter;->onPostMessage:I

    return v0
.end method

.method public final asInterface()I
    .locals 1

    iget v0, p0, Lo/TargetNavJsonAdapter;->ICustomTabsCallback:I

    return v0
.end method

.method final onMessageChannelReady()V
    .locals 1

    iget v0, p0, Lo/TargetNavJsonAdapter;->asBinder:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/TargetNavJsonAdapter;->asBinder:I

    return-void
.end method

.method final onNavigationEvent()V
    .locals 1

    iget v0, p0, Lo/TargetNavJsonAdapter;->extraCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/TargetNavJsonAdapter;->extraCallback:I

    return-void
.end method

.method final onPostMessage()V
    .locals 1

    iget v0, p0, Lo/TargetNavJsonAdapter;->onPostMessage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/TargetNavJsonAdapter;->onPostMessage:I

    return-void
.end method

.method final onPostMessage(I)V
    .locals 1

    iget v0, p0, Lo/TargetNavJsonAdapter;->onMessageChannelReady:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/TargetNavJsonAdapter;->onMessageChannelReady:I

    return-void
.end method

.method public final onRelationshipValidationResult()I
    .locals 1

    iget v0, p0, Lo/TargetNavJsonAdapter;->asBinder:I

    return v0
.end method

.method public final onTransact()I
    .locals 1

    iget v0, p0, Lo/TargetNavJsonAdapter;->extraCallback:I

    return v0
.end method
