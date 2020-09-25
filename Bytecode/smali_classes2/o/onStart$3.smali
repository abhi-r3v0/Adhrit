.class final Lo/onStart$3;
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
.field final synthetic onMessageChannelReady:Lo/onStart;


# direct methods
.method constructor <init>(Lo/onStart;Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lo/onStart$3;->onMessageChannelReady:Lo/onStart;

    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE workspec SET output=? WHERE id=?"

    return-object v0
.end method
