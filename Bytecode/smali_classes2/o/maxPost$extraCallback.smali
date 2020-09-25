.class final Lo/maxPost$extraCallback;
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
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ensureIndexed<",
        "Lo/getChildKey;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final onMessageChannelReady:Lo/maxPost$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lo/maxPost$extraCallback;

    invoke-direct {v0}, Lo/maxPost$extraCallback;-><init>()V

    sput-object v0, Lo/maxPost$extraCallback;->onMessageChannelReady:Lo/maxPost$extraCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    check-cast p1, Lo/getChildKey;

    .line 1053
    invoke-virtual {p1}, Lo/getChildKey;->close()V

    const/4 p1, 0x0

    return-object p1
.end method
