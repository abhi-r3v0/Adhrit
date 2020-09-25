.class Lo/generateTrustCred$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/generateTrustCred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/UUID;

.field private final onMessageChannelReady:I

.field private final onPostMessage:[B


# direct methods
.method public constructor <init>(Ljava/util/UUID;I[B)V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lo/generateTrustCred$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/UUID;

    .line 201
    iput p2, p0, Lo/generateTrustCred$onMessageChannelReady;->onMessageChannelReady:I

    .line 202
    iput-object p3, p0, Lo/generateTrustCred$onMessageChannelReady;->onPostMessage:[B

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/generateTrustCred$onMessageChannelReady;)Ljava/util/UUID;
    .locals 0

    .line 193
    iget-object p0, p0, Lo/generateTrustCred$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/UUID;

    return-object p0
.end method
