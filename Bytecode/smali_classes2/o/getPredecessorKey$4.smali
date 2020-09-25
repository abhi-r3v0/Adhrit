.class final Lo/getPredecessorKey$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPredecessorKey$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPredecessorKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getPredecessorKey$onNavigationEvent<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 98
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final bridge synthetic onPostMessage(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method
