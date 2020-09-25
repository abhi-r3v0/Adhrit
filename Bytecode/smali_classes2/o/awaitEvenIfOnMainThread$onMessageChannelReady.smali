.class public Lo/awaitEvenIfOnMainThread$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/awaitEvenIfOnMainThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final changes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/sanitizeAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public final viewCache:Lo/race;


# direct methods
.method public constructor <init>(Lo/race;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/race;",
            "Ljava/util/List<",
            "Lo/sanitizeAttribute;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lo/awaitEvenIfOnMainThread$onMessageChannelReady;->viewCache:Lo/race;

    .line 56
    iput-object p2, p0, Lo/awaitEvenIfOnMainThread$onMessageChannelReady;->changes:Ljava/util/List;

    return-void
.end method
