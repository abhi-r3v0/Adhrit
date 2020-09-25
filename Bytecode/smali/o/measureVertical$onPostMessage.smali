.class final Lo/measureVertical$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/measureVertical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final extraCallback:Lo/getSupportImageTintList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getSupportImageTintList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lo/getSupportImageTintList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/getSupportImageTintList<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lo/measureVertical$onPostMessage;->onPostMessage:Ljava/lang/Class;

    .line 43
    iput-object p2, p0, Lo/measureVertical$onPostMessage;->extraCallback:Lo/getSupportImageTintList;

    return-void
.end method
