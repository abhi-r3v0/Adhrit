.class final Lo/getMenuInflater$5;
.super Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMenuInflater;-><init>(Lo/setCurrentControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/getMenuInflater;


# direct methods
.method constructor <init>(Lo/getMenuInflater;Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lo/getMenuInflater$5;->onPostMessage:Lo/getMenuInflater;

    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE from WorkProgress where work_spec_id=?"

    return-object v0
.end method
