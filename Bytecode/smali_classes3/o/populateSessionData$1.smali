.class Lo/populateSessionData$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/populateSessionData;->getChildren()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lo/populateSessionData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/populateSessionData;


# direct methods
.method constructor <init>(Lo/populateSessionData;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lo/populateSessionData$1;->this$0:Lo/populateSessionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/populateSessionData;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Lo/populateSessionData$1$2;

    invoke-direct {v0, p0}, Lo/populateSessionData$1$2;-><init>(Lo/populateSessionData$1;)V

    return-object v0
.end method
