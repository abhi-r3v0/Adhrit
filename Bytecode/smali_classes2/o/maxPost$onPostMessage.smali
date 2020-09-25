.class final Lo/maxPost$onPostMessage;
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
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ensureIndexed<",
        "Lo/isCompleteForPath;",
        "Lo/isCompleteForPath;",
        ">;"
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Lo/maxPost$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lo/maxPost$onPostMessage;

    invoke-direct {v0}, Lo/maxPost$onPostMessage;-><init>()V

    sput-object v0, Lo/maxPost$onPostMessage;->ICustomTabsCallback:Lo/maxPost$onPostMessage;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 58
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

    .line 58
    check-cast p1, Lo/isCompleteForPath;

    return-object p1
.end method
