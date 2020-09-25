.class Lo/determineFrom$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/determineFrom;->open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/determineFrom;


# direct methods
.method constructor <init>(Lo/determineFrom;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lo/determineFrom$2;->this$0:Lo/determineFrom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 202
    iget-object v0, p0, Lo/determineFrom$2;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$800(Lo/determineFrom;)V

    return-void
.end method
