.class public final Lo/DialogTitle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DialogTitle$onPostMessage;,
        Lo/DialogTitle$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setNavigationContentDescription<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Lo/DialogTitle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/DialogTitle<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lo/DialogTitle;

    invoke-direct {v0}, Lo/DialogTitle;-><init>()V

    sput-object v0, Lo/DialogTitle;->onNavigationEvent:Lo/DialogTitle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady()Lo/DialogTitle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/DialogTitle<",
            "TT;>;"
        }
    .end annotation

    .line 22
    sget-object v0, Lo/DialogTitle;->onNavigationEvent:Lo/DialogTitle;

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")",
            "Lo/setNavigationContentDescription$ICustomTabsCallback<",
            "TModel;>;"
        }
    .end annotation

    .line 36
    new-instance p2, Lo/setNavigationContentDescription$ICustomTabsCallback;

    new-instance p3, Lo/setSoftInputMode;

    invoke-direct {p3, p1}, Lo/setSoftInputMode;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lo/DialogTitle$extraCallback;

    invoke-direct {p4, p1}, Lo/DialogTitle$extraCallback;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V

    return-object p2
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
