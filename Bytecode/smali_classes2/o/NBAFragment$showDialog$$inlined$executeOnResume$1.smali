.class final Lo/NBAFragment$showDialog$$inlined$executeOnResume$1;
.super Lo/SuggestedAmount;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SuggestedAmount<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onMessageChannelReady:Lo/setNotificationBadges;


# direct methods
.method constructor <init>(Lo/setNotificationBadges;)V
    .locals 0

    iput-object p1, p0, Lo/NBAFragment$showDialog$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/setNotificationBadges;

    invoke-direct {p0}, Lo/SuggestedAmount;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lo/NBAFragment$showDialog$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/setNotificationBadges;

    invoke-static {v0}, Lo/setNotificationBadges;->extraCallback(Lo/setNotificationBadges;)V

    invoke-super {p0, p1}, Lo/SuggestedAmount;->cancel(Z)Z

    move-result p1

    return p1
.end method
