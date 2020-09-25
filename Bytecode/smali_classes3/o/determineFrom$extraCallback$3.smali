.class final Lo/determineFrom$extraCallback$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/determineFrom$extraCallback;->onMessage(Lo/usedBytes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lo/determineFrom$extraCallback;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/determineFrom$extraCallback;Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lo/determineFrom$extraCallback$3;->this$1:Lo/determineFrom$extraCallback;

    iput-object p2, p0, Lo/determineFrom$extraCallback$3;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 86
    iget-object v0, p0, Lo/determineFrom$extraCallback$3;->this$1:Lo/determineFrom$extraCallback;

    iget-object v0, v0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    iget-object v1, p0, Lo/determineFrom$extraCallback$3;->val$str:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/determineFrom;->access$500(Lo/determineFrom;Ljava/lang/String;)V

    return-void
.end method
