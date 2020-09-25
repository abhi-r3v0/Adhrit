.class final Lo/populateFrameData$4$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/populateFrameData$4;->handleException(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lo/populateFrameData$4;

.field final synthetic val$e:Ljava/lang/Throwable;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/populateFrameData$4;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lo/populateFrameData$4$4;->this$1:Lo/populateFrameData$4;

    iput-object p2, p0, Lo/populateFrameData$4$4;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lo/populateFrameData$4$4;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lo/populateFrameData$4$4;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lo/populateFrameData$4$4;->val$e:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
