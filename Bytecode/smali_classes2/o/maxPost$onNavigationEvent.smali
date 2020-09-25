.class final Lo/maxPost$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ensureIndexed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/maxPost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ensureIndexed<",
        "Lo/getChildKey;",
        "Lo/getChildKey;",
        ">;"
    }
.end annotation


# static fields
.field static final onPostMessage:Lo/maxPost$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lo/maxPost$onNavigationEvent;

    invoke-direct {v0}, Lo/maxPost$onNavigationEvent;-><init>()V

    sput-object v0, Lo/maxPost$onNavigationEvent;->onPostMessage:Lo/maxPost$onNavigationEvent;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    check-cast p1, Lo/getChildKey;

    return-object p1
.end method
