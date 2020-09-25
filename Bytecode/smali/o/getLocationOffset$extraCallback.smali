.class final Lo/getLocationOffset$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getLocationOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/applySupportImageTint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/applySupportImageTint<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final extraCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lo/applySupportImageTint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lo/applySupportImageTint<",
            "TT;TR;>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lo/getLocationOffset$extraCallback;->onMessageChannelReady:Ljava/lang/Class;

    .line 118
    iput-object p2, p0, Lo/getLocationOffset$extraCallback;->extraCallback:Ljava/lang/Class;

    .line 119
    iput-object p3, p0, Lo/getLocationOffset$extraCallback;->ICustomTabsCallback:Lo/applySupportImageTint;

    return-void
.end method
