.class Lo/populateSessionData$4;
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

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lo/populateSessionData;Ljava/util/Iterator;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lo/populateSessionData$4;->this$0:Lo/populateSessionData;

    iput-object p2, p0, Lo/populateSessionData$4;->val$iter:Ljava/util/Iterator;

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

    .line 133
    new-instance v0, Lo/populateSessionData$4$4;

    invoke-direct {v0, p0}, Lo/populateSessionData$4$4;-><init>(Lo/populateSessionData$4;)V

    return-object v0
.end method
