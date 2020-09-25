.class final Lo/getCompoundHash$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash;->ICustomTabsCallback$Stub$Proxy()Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onTransact"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getCompoundHash;


# direct methods
.method constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 781
    iput-object p1, p0, Lo/getCompoundHash$onTransact;->extraCallback:Lo/getCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 784
    iget-object v0, p0, Lo/getCompoundHash$onTransact;->extraCallback:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->extraCommand(Lo/getCompoundHash;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lo/getCompoundHash$onTransact;->extraCallback:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->validateRelationship(Lo/getCompoundHash;)Z

    .line 788
    iget-object v0, p0, Lo/getCompoundHash$onTransact;->extraCallback:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->IPostMessageService$Stub(Lo/getCompoundHash;)V

    return-void
.end method
