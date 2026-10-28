.class public Lcom/mifiservice/hello/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field mStartMenuItem:Landroid/view/MenuItem;

.field mStopMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setStartMenuEnabled(Z)V
    .locals 2
    .param p1, "startMenuEnabled"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mifiservice/hello/MainActivity;->mStartMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 66
    iget-object v1, p0, Lcom/mifiservice/hello/MainActivity;->mStopMenuItem:Landroid/view/MenuItem;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/mifiservice/hello/MainActivity;->setContentView(I)V

    .line 22
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 26
    invoke-virtual {p0}, Lcom/mifiservice/hello/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 27
    const/high16 v0, 0x7f080000

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mifiservice/hello/MainActivity;->mStartMenuItem:Landroid/view/MenuItem;

    .line 28
    const v0, 0x7f080001

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mifiservice/hello/MainActivity;->mStopMenuItem:Landroid/view/MenuItem;

    .line 29
    invoke-direct {p0, v2}, Lcom/mifiservice/hello/MainActivity;->setStartMenuEnabled(Z)V

    .line 30
    return v2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/high16 v3, 0x7f080000

    if-ne v2, v3, :cond_0

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mifiservice/service/MifiService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mifiservice/hello/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mifiservice/hello/MainActivity;->setStartMenuEnabled(Z)V

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 44
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f080001

    if-ne v2, v3, :cond_1

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mifiservice/service/MifiService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mifiservice/hello/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 50
    invoke-direct {p0, v1}, Lcom/mifiservice/hello/MainActivity;->setStartMenuEnabled(Z)V

    goto :goto_0

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
