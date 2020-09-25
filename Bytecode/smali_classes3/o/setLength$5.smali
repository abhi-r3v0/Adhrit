.class final Lo/setLength$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setLength;-><init>(Lo/ringRead;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/setLength;


# direct methods
.method constructor <init>(Lo/setLength;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lo/setLength$5;->this$0:Lo/setLength;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 47
    iget-object v0, p0, Lo/setLength$5;->this$0:Lo/setLength;

    invoke-static {v0}, Lo/setLength;->access$000(Lo/setLength;)V

    return-void
.end method
