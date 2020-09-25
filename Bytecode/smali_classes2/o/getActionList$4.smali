.class final Lo/getActionList$4;
.super Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getActionList;-><init>(Lo/setCurrentControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM request where url is ?"

    return-object v0
.end method
