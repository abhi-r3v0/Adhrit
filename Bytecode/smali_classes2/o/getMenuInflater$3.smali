.class final Lo/getMenuInflater$3;
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
.field final synthetic onNavigationEvent:Lo/getMenuInflater;


# direct methods
.method constructor <init>(Lo/getMenuInflater;Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lo/getMenuInflater$3;->onNavigationEvent:Lo/getMenuInflater;

    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM WorkProgress"

    return-object v0
.end method
