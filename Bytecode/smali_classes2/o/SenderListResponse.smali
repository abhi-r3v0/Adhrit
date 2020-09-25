.class public final Lo/SenderListResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementSource;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:I

.field private final asInterface:Z

.field private final extraCallback:Ljava/util/Date;

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Landroid/location/Location;

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SenderListResponse;->extraCallback:Ljava/util/Date;

    iput p2, p0, Lo/SenderListResponse;->onPostMessage:I

    iput-object p3, p0, Lo/SenderListResponse;->ICustomTabsCallback:Ljava/util/Set;

    iput-object p4, p0, Lo/SenderListResponse;->onNavigationEvent:Landroid/location/Location;

    iput-boolean p5, p0, Lo/SenderListResponse;->onMessageChannelReady:Z

    iput p6, p0, Lo/SenderListResponse;->ICustomTabsCallback$Stub:I

    iput-boolean p7, p0, Lo/SenderListResponse;->asInterface:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    iget v0, p0, Lo/SenderListResponse;->onPostMessage:I

    return v0
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    iget-boolean v0, p0, Lo/SenderListResponse;->onMessageChannelReady:Z

    return v0
.end method

.method public final extraCallback()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/SenderListResponse;->ICustomTabsCallback:Ljava/util/Set;

    return-object v0
.end method

.method public final onMessageChannelReady()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lo/SenderListResponse;->onNavigationEvent:Landroid/location/Location;

    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/SenderListResponse;->ICustomTabsCallback$Stub:I

    return v0
.end method

.method public final onPostMessage()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lo/SenderListResponse;->extraCallback:Ljava/util/Date;

    return-object v0
.end method

.method public final onTransact()Z
    .locals 1

    iget-boolean v0, p0, Lo/SenderListResponse;->asInterface:Z

    return v0
.end method
