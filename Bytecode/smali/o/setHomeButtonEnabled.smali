.class public final Lo/setHomeButtonEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setHomeButtonEnabled$onNavigationEvent;,
        Lo/setHomeButtonEnabled$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setNavigationContentDescription<",
        "Ljava/io/File;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 0

    .line 17
    check-cast p1, Ljava/io/File;

    .line 1023
    new-instance p2, Lo/setNavigationContentDescription$ICustomTabsCallback;

    new-instance p3, Lo/setSoftInputMode;

    invoke-direct {p3, p1}, Lo/setSoftInputMode;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lo/setHomeButtonEnabled$onNavigationEvent;

    invoke-direct {p4, p1}, Lo/setHomeButtonEnabled$onNavigationEvent;-><init>(Ljava/io/File;)V

    invoke-direct {p2, p3, p4}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V

    return-object p2
.end method

.method public final bridge synthetic onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
