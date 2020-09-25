.class public final Lo/setRead;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static ICustomTabsCallback(Lcom/google/android/gms/internal/firebase_auth/zzhq;Lo/setMessageFragments;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_auth/zzhq;",
            "Lo/setMessageFragments<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lo/setMessageFragments;->ICustomTabsCallback:Lo/setJwtIdToken;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lo/setDisplayCode;->ICustomTabsCallback(Lcom/google/android/gms/internal/firebase_auth/zzhq;Lo/setJwtIdToken;ILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lo/setMessageFragments;->onNavigationEvent:Lo/setJwtIdToken;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lo/setDisplayCode;->ICustomTabsCallback(Lcom/google/android/gms/internal/firebase_auth/zzhq;Lo/setJwtIdToken;ILjava/lang/Object;)V

    return-void
.end method

.method static onMessageChannelReady(Lo/setMessageFragments;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/setMessageFragments<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lo/setMessageFragments;->ICustomTabsCallback:Lo/setJwtIdToken;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lo/setDisplayCode;->onNavigationEvent(Lo/setJwtIdToken;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lo/setMessageFragments;->onNavigationEvent:Lo/setJwtIdToken;

    const/4 v0, 0x2

    .line 5
    invoke-static {p0, v0, p2}, Lo/setDisplayCode;->onNavigationEvent(Lo/setJwtIdToken;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method
