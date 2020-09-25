.class final Lo/onStart$4;
.super Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onStart;-><init>(Lo/setCurrentControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/onStart;


# direct methods
.method constructor <init>(Lo/onStart;Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lo/onStart$4;->onPostMessage:Lo/onStart;

    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    return-object v0
.end method
