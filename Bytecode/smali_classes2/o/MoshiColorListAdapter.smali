.class final Lo/MoshiColorListAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic onNavigationEvent:Lo/CredColorFormat;


# direct methods
.method constructor <init>(Lo/CredColorFormat;)V
    .locals 0

    iput-object p1, p0, Lo/MoshiColorListAdapter;->onNavigationEvent:Lo/CredColorFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lo/MoshiColorListAdapter;->onNavigationEvent:Lo/CredColorFormat;

    invoke-virtual {p1}, Lo/CredColorFormat;->ICustomTabsCallback()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object p2, p0, Lo/MoshiColorListAdapter;->onNavigationEvent:Lo/CredColorFormat;

    invoke-static {p2}, Lo/CredColorFormat;->onMessageChannelReady(Lo/CredColorFormat;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
