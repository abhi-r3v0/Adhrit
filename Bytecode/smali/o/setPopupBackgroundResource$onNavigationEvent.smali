.class final Lo/setPopupBackgroundResource$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPopupBackgroundDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPopupBackgroundResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPopupBackgroundDrawable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lo/setPopupBackgroundResource$onNavigationEvent;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/setPopupBackgroundResource$onNavigationEvent;->onNavigationEvent:Ljava/lang/Object;

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method
