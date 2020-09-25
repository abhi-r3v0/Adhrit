.class final Lo/persistEvent$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/persistEvent$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/persistEvent;->forEachDescendant(Lo/persistEvent$onNavigationEvent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/persistEvent$onNavigationEvent<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/persistEvent;

.field final synthetic val$childrenFirst:Z

.field final synthetic val$visitor:Lo/persistEvent$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/persistEvent;Lo/persistEvent$onNavigationEvent;Z)V
    .locals 0

    .line 126
    iput-object p1, p0, Lo/persistEvent$1;->this$0:Lo/persistEvent;

    iput-object p2, p0, Lo/persistEvent$1;->val$visitor:Lo/persistEvent$onNavigationEvent;

    iput-boolean p3, p0, Lo/persistEvent$1;->val$childrenFirst:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visitTree(Lo/persistEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lo/persistEvent$1;->val$visitor:Lo/persistEvent$onNavigationEvent;

    iget-boolean v1, p0, Lo/persistEvent$1;->val$childrenFirst:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lo/persistEvent;->forEachDescendant(Lo/persistEvent$onNavigationEvent;ZZ)V

    return-void
.end method
