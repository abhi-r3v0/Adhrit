.class public final Lo/getNavigationMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getNavigationMode$onMessageChannelReady;,
        Lo/getNavigationMode$extraCallback;,
        Lo/getNavigationMode$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setNavigationContentDescription<",
        "TModel;TData;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/getNavigationMode$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getNavigationMode$onPostMessage<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getNavigationMode$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getNavigationMode$onPostMessage<",
            "TData;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/getNavigationMode;->extraCallback:Lo/getNavigationMode$onPostMessage;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")",
            "Lo/setNavigationContentDescription$ICustomTabsCallback<",
            "TData;>;"
        }
    .end annotation

    .line 43
    new-instance p2, Lo/setNavigationContentDescription$ICustomTabsCallback;

    new-instance p3, Lo/setSoftInputMode;

    invoke-direct {p3, p1}, Lo/setSoftInputMode;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lo/getNavigationMode$extraCallback;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/getNavigationMode;->extraCallback:Lo/getNavigationMode$onPostMessage;

    invoke-direct {p4, p1, v0}, Lo/getNavigationMode$extraCallback;-><init>(Ljava/lang/String;Lo/getNavigationMode$onPostMessage;)V

    invoke-direct {p2, p3, p4}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V

    return-object p2
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
